{{/*
Expand the name of the chart.
*/}}
{{- define "xircl.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "xircl.storageClass" -}}
{{- if .Values.xircl.nfs_volumes.host -}}
""
{{- else -}}
{{ .Values.global.storageClass }}
{{- end -}}
{{- end -}}

{{- define "xircl.aliaseslist" -}}
{{- $names := list -}}
{{- range .Values.enterprises -}}
{{- $names = append $names .hubhost_alias -}}
{{- end }}
{{- $names | join "," | replace " " "," | quote -}}
{{- end -}}

{{- define "xircl.consumers_volumes" -}}
volumes:
  - name: xircl-enterprises
    configMap:
      name: xircl-enterprises

  - name: xircl-php-cli-ini
    configMap:
      name: xircl-php-cli-ini

  - name: xircl-config
    configMap:
      name: xircl-config

  - name: xircl-uploads
    persistentVolumeClaim:
      claimName: {{ .Values.xircl.persistence.claims.uploads }}

  - name: xircl-cache
    persistentVolumeClaim:
      claimName: {{ .Values.xircl.persistence.claims.cache }}

  - name: sessions-volume
    persistentVolumeClaim:
      claimName: {{ .Values.xircl.persistence.claims.sessions }}

  - name: symfony-tmpfs-cache
    emptyDir:
      medium: Memory

  - name: xircl-logs
    emptyDir: {}

{{- if .Values.mysql.customCaCert }}
  - name: mysql-custom-ca
    configMap:
      name: mysql-custom-ca
  - name: ssl-certs
    emptyDir: {}
{{- end }}
{{- end }}

{{- define "xircl.consumers_volumeMounts" -}}
volumeMounts:
  - name: xircl-php-cli-ini
    mountPath: /etc/php/7.4/cli/php.ini
    subPath: php.ini
  - name: xircl-enterprises
    mountPath: /var/www/xircl/app/config/enterprise
  - name: xircl-uploads
    mountPath: /var/www/xircl/web/uploads
  - name: xircl-cache
    mountPath: /var/www/xircl/app/vochub_cache
  - name: sessions-volume
    mountPath: /sessions
  - name: xircl-config
    mountPath: /etc/config/prod/parameters.yml
    subPath: parameters.yml
  - name: symfony-tmpfs-cache
    mountPath: /var/www/xircl/app/cache
  - name: xircl-logs
    mountPath: /var/www/xircl/app/logs
    readOnly: false
  {{- if .Values.mysql.customCaCert }}
  - name: ssl-certs
    mountPath: /etc/ssl/certs
    readOnly: false
  {{- end }}
{{- end }}

{{- define "xircl.consumers_probes" -}}
livenessProbe:
  exec:
    command:
      - /usr/bin/pgrep
      - php
  periodSeconds: 65
  successThreshold: 1
  failureThreshold: 4
{{- end }}

{{/* Create MongoDB DSN
     Note! Hosts should be with ports here */}}
{{- define "xircl.mongodbDSN" -}}
  {{- if .mongodb.authentication -}}
    {{- if contains "," .mongodb.host }}
      {{- $replicaSet := required "A valid .Values.xircl.mongodb.replica_set parameter required!" .mongodb.replica_set }}
      {{- printf "mongodb://%s/?authSource=%s&replicaSet=%s&tls=%t" .mongodb.host .mongodb.auth_source $replicaSet .mongodb.tls }}
    {{- else }}
      {{- printf "mongodb://%s/?authSource=%s&tls=%t" .mongodb.host .mongodb.auth_source .mongodb.tls }}
    {{- end }}
  {{- else }}
    {{- if contains "," .mongodb.host }}
      {{- $replicaSet := required "A valid .mongodb.replica_set parameter required!" .mongodb.replica_set }}
      {{- printf "mongodb://%s/?replicaSet=%s&tls=%t" .mongodb.host $replicaSet .mongodb.tls }}
    {{- else }}
      {{- printf "mongodb://%s/?tls=%t" .mongodb.host .mongodb.tls }}
    {{- end }}
  {{- end }}
{{- end }}

{{/* Create MongoDB CLI authentication string */}}
{{- define "xircl.mongodbCLIParameters" -}}
  {{- $port := int .port }}
  {{- if contains "," .host }}
    {{- printf "--eval=\"stage='prod';port=%d;username='%s';password='%s',connectionOptions='authSource=%s&replicaSet=%s&tls=%t'\"" $port .username .password .auth_source .replica_set .tls }}
  {{- else }}
    {{- printf "--eval=\"stage='prod';port=%d;username='%s';password='%s',connectionOptions='authSource=%s&tls=%t'\"" $port .username .password .auth_source .tls }}
  {{- end }}
{{- end -}}

{{/* Enterprise configuration template */}}
{{- define "xircl.enterprise.yaml" -}}
    imports:
      - { resource: ../environment/prod.yml }

    enqueue:
      default:
        transport:
          dsn: "amqp://{{ .xc.rabbitmq.connection.socket_notification.host }}/%2f"

    parameters:
      enterprise_id: {{ .ent.id }}
      enterprise_name: {{ .ent.name }}
      enterprise_timezone: {{ .ent.timeZone | default .xc.timeZone }}
      application_host: {{ .ent.hubhost }}
    {{- if .ent.hubhost_alias }}
      application_host_aliases:
      {{- range split " " .ent.hubhost_alias }}
        - {{ . }}
      {{- end }}
    {{- end }}
      feedback_v2_api_url_template: https://{{- .ent.fbhost -}}/
      feedback_api_url: https://{{- .ent.fbhost -}}/
      feedback_access_code: {{ .ent.ssoac }}
      database_name: {{ .ent.xircldbname }}
      database_host: {{ .xc.db.host }}
      database_port: ~
      database_user: {{ .xc.db.username }}
      database_password: {{ .xc.db.password }}
    {{- if .mysql.tls }}
      mysql_verify_cert: true
      mysql_ssl_ca: '/etc/ssl/certs/ca-certificates.crt'
    {{- end }}
    {{- if .xc.mongodb.authentication }}
      mongodb_username: {{ .xc.mongodb.username }}
      mongodb_password: {{ .xc.mongodb.password }}
      feedback_mongodb_username: {{ .xc.mongodb.username }}
      feedback_mongodb_password: {{ .xc.mongodb.password }}
      classify_mongodb_username: {{ .xc.mongodb.username }}
      classify_mongodb_password: {{ .xc.mongodb.password }}
    {{- end }}
      mongodb_database: {{ .ent.mongodb_database }}
      mongodb_dsn: {{ template "xircl.mongodbDSN" .xc }}
      feedback_mongodb_database: {{ .ent.feedback_mongodb_database }}
      feedback_mongodb_dsn: {{ template "xircl.mongodbDSN" .xc }}
      classify_mongodb_database: '%feedback_mongodb_database%'
      classify_mongodb_dsn: {{ template "xircl.mongodbDSN" .xc }}
      rabbitmq.connection.socket_notification.host: {{ .xc.rabbitmq.connection.socket_notification.host }}
      socket_notification.host: {{ .xc.socket_notification.host }}
      socket_notification.jwt_signature: {{ .xc.socket_notification.jwt_secret }}
      redis_host: {{ .xc.redis.host }}
      ca_path: '/etc/ssl/certs/ca-certificates.crt'
      go_query_executor_url: xircl-qry-exec
      sso_main_host: {{ or .ent.sso_main_host .xc.sso.main_host }}
      sso_host: '%sso_main_host%/api/'
      force_https_sso: true
      sso_app_name: {{ .xc.sso.appname }}
      sso_app_secret: {{ .xc.sso.appsecret }}
      sso_feedback_app_name: {{ .xc.sso.fbappname }}
      sso_feedback_app_secret: {{ .xc.sso.fbappsecret }}
      verify_ssl_sso: {{ .xc.sso.verify_tls }}
      classify_host: classifier/cs/
      clerk_host: clerk/
      lemmatizer_host: lemmatizer/
      lemmanet_host: lemmanet/
      zendesk_enabled: {{ .ent.zendesk_enabled | default false | toString }}
    {{- if .ent.labs_access }}
      labs_access: true
    {{- end }}
      zendesk_chat_suppress: true
      zendesk_contact_form_suppress: false
      display.service_host: screener
  {{- if hasKey .ent "display" }}
    {{- if eq .ent.hubhost ((.ent.display).domain | default "") }}
      display.application_host_override: {{ .ent.display.application_host_override }}
    {{- end }}
    {{- if ((.ent.display).from_email | default .xc.smtp.from) }}
      display.from_email: {{ .ent.display.from_email | default .xc.smtp.from }}
    {{- end }}
  {{- else }}
    {{- if .xc.smtp.from }}
      display.from_email: {{ .xc.smtp.from }}
    {{- end }}
  {{- end }}
      xircl.export_root_dir: '%kernel.xircl_cache_dir%/exports'
      xircl.background_images_path: '/bundles/xirclcore/images/welcome_bgs'
      session.save_path: /sessions
    {{- if .ent.vocci }}
      voc_ci_url: {{ .ent.vocci | quote }}
    {{- end }}
    {{- if .ent.vocact }}
      ticket_system_url: {{ .ent.vocact | quote }}
    {{- end }}
    {{- if .ent.ticket_system_use_iframe }}
      ticket_system_use_iframe: true
    {{- end }}
      sftp_user: vochub_sftp
      sftp_folder: /home/vochub_sftp/xircl-exchange
    {{- if .ent.corporateParameters }}
      {{- toYaml .ent.corporateParameters | nindent 6 }}
    {{- end }}

    swiftmailer:
      transport: smtp
    {{- if .xc.smtp.host }}
      host: {{ .xc.smtp.host }}
    {{- end }}
    {{- if .xc.smtp.port }}
      port: {{ .xc.smtp.port }}
    {{- end }}
    {{- if .xc.smtp.user }}
      username: {{ .xc.smtp.user }}
    {{- end }}
    {{- if .xc.smtp.pass }}
      password: {{ .xc.smtp.pass }}
    {{- end }}
    {{- if .xc.smtp.tls }}
      encryption: tls
    {{- end }}
{{ end }}

{{- define "xircl.customCaInitContainer" -}}
{{- if .Values.mysql.customCaCert -}}
- name: init-ca
  image: "{{ .Values.image.registry }}ubuntu:focal-20230301"
  command: ["/bin/sh", "-c"]
  args: ["apt-get -qq update && apt-get -qq install -y ca-certificates && update-ca-certificates && cp -rL /etc/ssl/certs/* /ssl-certs/"]
  env:
    - name: DEBIAN_FRONTEND
      value: noninteractive
  volumeMounts:
    - name: mysql-custom-ca
      mountPath: /usr/local/share/ca-certificates/mysqlCACert.crt
      subPath: rootCACert.pem
      readOnly: false
    - name: ssl-certs
      mountPath: /ssl-certs
      readOnly: false
{{- end }}
{{- end }}

{{- define "xircl.mysqlCliOptions" -}}
-u ${XIRCL_DB_USER} -p"${XIRCL_DB_PASSWORD}" --host=${XIRCL_DB_HOST}
{{- if .Values.mysql.tls }} --ssl-mode=VERIFY_IDENTITY --ssl-ca=/etc/ssl/certs/ca-certificates.crt{{ end }}
{{- end }}
