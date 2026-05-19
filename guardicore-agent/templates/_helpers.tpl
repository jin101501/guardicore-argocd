{{- define "validatePrerequisites" -}}
  {{- if not .Values.caCertFile }}
  {{- fail "caCertFile must be set" }}
  {{- end }}

  {{- if not .Values.uiUmPassword }}
  {{- fail "uiUmPassword must be set" }}
  {{- end }}

  {{- if not .Values.publicRegistry }}
  {{- fail "publicRegistry must be set" }}
  {{- end }}

  {{- if and (not .Values.sslAddresses) (or (not .Values.sslServer) (not .Values.sslPort))  }}
  {{- fail "Either sslAddresses or sslServer and sslPort should be provided" }}
  {{- end }}
{{- end }}


