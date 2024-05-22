{{- define "kannel.storageClass" -}}
{{- if .Values.nfs_volumes.host -}}
""
{{- else -}}
{{ .Values.global.storageClass }}
{{- end -}}
{{- end -}}
