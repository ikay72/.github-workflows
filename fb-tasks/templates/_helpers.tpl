{{ define "fb-tasks.consumers_probes" }}
startupProbe:
  exec:
    command:
      - pgrep
      - {{ .arg }}
  initialDelaySeconds: 5
  periodSeconds: 10
  successThreshold: 1
  failureThreshold: 20
  timeoutSeconds: 20

livenessProbe:
  exec:
    command:
      - pgrep
      - {{ .arg }}
  initialDelaySeconds: 5
  periodSeconds: 60
  successThreshold: 1
  failureThreshold: 20
  timeoutSeconds: 20

readinessProbe:
  exec:
    command:
      - pgrep
      - {{ .arg }}
  initialDelaySeconds: 5
  periodSeconds: 60
  successThreshold: 1
  failureThreshold: 10
  timeoutSeconds: 20
{{ end }}

{{- define "fb-tasks.customCaInitContainer" -}}
{{- if or .Values.fbtasks.customCaCert .Values.mysql.customCaCert -}}
- name: init-ca
  image: "{{ .Values.image.registry }}ubuntu:focal-20230301"
  command: ["/bin/sh", "-c"]
  args: ["apt-get -qq update && apt-get -qq install -y ca-certificates && update-ca-certificates && cp -rL /etc/ssl/certs/* /ssl-certs/"]
  env:
    - name: DEBIAN_FRONTEND
      value: noninteractive
  volumeMounts:
  {{- if .Values.fbtasks.customCaCert }}
    - name: fbtasks-custom-ca
      mountPath: /usr/local/share/ca-certificates/rootCACert.crt
      subPath: rootCACert.pem
      readOnly: false
  {{- end }}
  {{- if .Values.mysql.customCaCert }}
    - name: mysql-custom-ca
      mountPath: /usr/local/share/ca-certificates/mysqlCACert.crt
      subPath: rootCACert.pem
      readOnly: false
  {{- end }}
    - name: ssl-certs
      mountPath: /ssl-certs
      readOnly: false
{{- end }}
{{- end }}

{{- define "fb-tasks.feedbackVolumeMounts" }}
- name: feedback-config
  mountPath: /etc/feedback/common.yaml
  subPath: common.yaml

- name: feedback-databases
  mountPath: /etc/feedback/databases.yaml
  subPath: databases.yaml

- name: feedback-gdpr-settings
  mountPath: /etc/feedback/gdpr_settings.yaml
  subPath: gdpr_settings.yaml

- name: feedback-sms-gateways
  mountPath: /etc/feedback/sms_gateways.yaml
  subPath: sms_gateways.yaml

- name: feedback-enterprises
  mountPath: /etc/feedback/enterprise_specific_configs.yaml
  subPath: enterprise_specific_configs.yaml

- name: feedback-celery-yaml
  mountPath: /etc/feedback/celery.yaml
  subPath: celery.yaml

- name: fbtasks-logging
  mountPath: /etc/feedback/logging.yaml
  subPath: logging.yaml

{{- end }}
