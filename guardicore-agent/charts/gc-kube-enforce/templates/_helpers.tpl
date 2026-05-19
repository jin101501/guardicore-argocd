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

{{- define "isEnforcementCniSupported" -}}
{{- $supportedEnforcementCNIs := list "calico" "ovn" "azurecni" -}}
{{- $cni := $.Values.global.enforcementCni  -}}
{{- if has $cni $supportedEnforcementCNIs -}}
true
{{- else -}}
false
{{- end -}}
{{- end -}}
