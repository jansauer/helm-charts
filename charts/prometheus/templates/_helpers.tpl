{{/*
Common labels
*/}}
{{- define "prometheus.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/release: {{ .Release.Name }}
{{- end }}

{{/*
Common annotations
*/}}
{{- define "prometheus.annotations" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{ include "prometheus.labels" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
