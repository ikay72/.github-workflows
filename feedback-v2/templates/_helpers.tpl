{{/*
Expand the name of the chart.
*/}}
{{- define "feedback-v2.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "feedback-v2.aliaseslist" -}}
{{- $names := list -}}
{{- range .Values.enterprises -}}
{{- $names = append $names .surveyhost_alias -}}
{{- end }}
{{- $names | join "," | replace " " "," | quote -}}
{{- end -}}
