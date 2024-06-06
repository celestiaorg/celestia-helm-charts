{{/*
Return the proper app image name
*/}}
{{- define "app.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.app.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper image name (for the init container volume-permissions image)
*/}}
{{- define "app.volumePermissions.image" -}}
{{- include "common.images.image" ( dict "imageRoot" .Values.volumePermissions.image "global" .Values.global ) -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "app.imagePullSecrets" -}}
{{- include "common.images.renderPullSecrets" (dict "images" (list .Values.app.image .Values.volumePermissions.image) "context" $) -}}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "app.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "common.names.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}


{{/*
Return the proper image name for the otel agent
*/}}
{{- define "app.otelAgent.image" -}}
{{- include "common.images.image" (dict "imageRoot" .Values.app.otelAgent.image "global" .Values.global) -}}
{{- end -}}

# TODO: add validations for values
# Remember to add the validation message to NOTES.txt at the end ({{- include "app.validateValues" . }})
{{/*
Compile all warnings into a single message.
*/}}
{{- define "app.validateValues" -}}
{{- $messages := list -}}
{{- $messages := append $messages (include "app.validateValues.foo" .) -}}
{{- $messages := append $messages (include "app.validateValues.bar" .) -}}
{{- $messages := without $messages "" -}}
{{- $message := join "\n" $messages -}}

{{- if $message -}}
{{-   printf "\nVALUES VALIDATION:\n%s" $message -}}
{{- end -}}
{{- end -}}
