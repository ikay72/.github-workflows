{{- define "fbconfig.celerybroker" -}}
amqp://{{ .Values.fbconfig.amqp.user }}:{{ .Values.fbconfig.amqp.password }}@{{ .Values.fbconfig.amqp.host }}//
{{- end -}}

{{- define "fbconfig.corsoriginwhitelist" -}}
{{- $names := list -}}
{{- range .Values.enterprises -}}
{{- $names = append $names .hubhost -}}
{{- if .hubhost_alias }}
{{- range split " " .hubhost_alias }}
{{- $names = append $names . }}
{{- end }}
{{- end }}
{{- end }}
{{- if .Values.fbconfig.corsdebug -}}
{{- $names = append $names "local.sandsiv.com" -}}
{{- $names = append $names "local.sandsiv.com:3000" -}}
{{- end -}}
{{- $urls := list -}}
{{- range $names }}
{{- $httpurl := printf "\"http://%s\"" . }}
{{- $httpsurl := printf "\"https://%s\"" . }}
{{- $urls = append $urls $httpurl }}
{{- $urls = append $urls $httpsurl }}
{{- end }}
{{- $urls | join "," -}}
{{- end -}}

{{/* Create MongoDB DSN
     Note! Hosts should be with ports here */}}
{{- define "fbconfig.mongodbDSN" -}}
  {{- if .authentication -}}
    {{- if contains "," .host }}
      {{- $replicaSet := required "A valid .Values.fbconfig.mongodb.replica_set parameter required!" .replica_set }}
      {{- printf "mongodb://%s:%s@%s/?authSource=%s&replicaSet=%s" .username .password .host .auth_source $replicaSet }}
    {{- else }}
      {{- printf "mongodb://%s:%s@%s/?authSource=%s" .username .password .host .auth_source }}
    {{- end }}
  {{- else }}
    {{- if contains "," .host }}
      {{- $replicaSet := required "A valid .replica_set parameter required!" .replica_set }}
      {{- printf "mongodb://%s/?replicaSet=%s" .host $replicaSet }}
    {{- else }}
      {{- printf "mongodb://%s" .host }}
    {{- end }}
  {{- end }}
{{- end }}

{{- define "fbconfig.customCaInitContainer" -}}
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

{{- define "fbconfig.mysqlCliOptions" -}}
-u ${FEEDBACK_DB_USER} -p"${FEEDBACK_DB_PASSWORD}" --host=${FEEDBACK_DB_HOST}
{{- if .Values.mysql.tls }} --ssl-mode=VERIFY_IDENTITY --ssl-ca=/etc/ssl/certs/ca-certificates.crt{{ end }}
{{- end }}
