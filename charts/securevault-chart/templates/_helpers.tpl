{{/*
Common labels
*/}}
{{- define "securevault.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: securevault
environment: {{ .Values.global.environment }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "securevault.selectorLabels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
{{/*
Backend selector labels (machi frontend)
*/}}
{{- define "securevault.backendLabels" -}}
app.kubernetes.io/part-of: securevault
app.kubernetes.io/component: backend
{{- end -}}