{{- define "ivr.storageClass" -}}
{{- if .Values.ivr.nfs_volumes.host -}}
""
{{- else -}}
{{ .Values.global.storageClass }}
{{- end -}}
{{- end -}}
