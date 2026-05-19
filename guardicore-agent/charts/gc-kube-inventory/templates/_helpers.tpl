{{- define "privateRegistry" -}}
{{- $registry := (.Values.privateRegistry  | default .Values.global.privateRegistry) -}}
{{- if ne $registry "" -}}
  {{- if hasSuffix "/" $registry -}}
    {{- $registry -}}
  {{- else -}}
    {{- printf "%s/" $registry -}}
  {{- end -}}
{{- else -}}
  {{- "" -}}
{{- end -}}
{{- end -}}
