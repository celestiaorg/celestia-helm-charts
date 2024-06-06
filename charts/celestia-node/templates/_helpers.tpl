{{/*
Return the proper app image name
*/}}
{{- define "node.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.node.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper image name (for the init container volume-permissions image)
*/}}
{{- define "node.volumePermissions.image" -}}
{{- include "common.images.image" ( dict "imageRoot" .Values.volumePermissions.image "global" .Values.global ) -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "node.imagePullSecrets" -}}
{{- include "common.images.renderPullSecrets" (dict "images" (list .Values.node.image .Values.volumePermissions.image) "context" $) -}}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "node.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "common.names.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}


{{/*
Return the proper image name for the otel agent
*/}}
{{- define "node.otelAgent.image" -}}
{{- include "common.images.image" (dict "imageRoot" .Values.node.otelAgent.image "global" .Values.global) -}}
{{- end -}}

# TODO: add validations for values
# Remember to add the validation message to NOTES.txt at the end ({{- include "node.validateValues" . }})
{{/*
Compile all warnings into a single message.
*/}}
{{- define "node.validateValues" -}}
{{- $messages := list -}}
{{- $messages := append $messages (include "node.validateValues.foo" .) -}}
{{- $messages := append $messages (include "node.validateValues.bar" .) -}}
{{- $messages := without $messages "" -}}
{{- $message := join "\n" $messages -}}

{{- if $message -}}
{{-   printf "\nVALUES VALIDATION:\n%s" $message -}}
{{- end -}}
{{- end -}}
