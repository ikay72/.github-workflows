{{- define "fbconfig.storageClass" -}}
{{- if .Values.fbconfig.nfs_volumes.host -}}
""
{{- else -}}
{{ .Values.global.storageClass }}
{{- end -}}
{{- end -}}
