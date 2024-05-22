{{- define "sso.customCaInitContainer" -}}
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

{{- define "sso.mysqlCliOptions" -}}
-u ${SSO_DB_USER} -p"${SSO_DB_PASSWORD}" --host=${SSO_DB_HOST}
{{- if .Values.mysql.tls }} --ssl-mode=VERIFY_IDENTITY --ssl-ca=/etc/ssl/certs/ca-certificates.crt{{ end }}
{{- end }}
