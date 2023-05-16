{{/* Generate affinity from value with app label */}}
{{/* example: {{ include "workload.nodepool" "prod" }} to deploy in "env: prod" node pool*/}}
{{- define "workload.nodepool" -}}
affinity:
  nodeAffinity:
    preferredDuringSchedulingIgnoredDuringExecution:
    - weight: 1
      preference:
        matchExpressions:
        - key: {{ .Values.global.nodePool.key }}
          operator: In
          values:
          - {{ .Values.global.nodePool.value }}
{{- end }}
