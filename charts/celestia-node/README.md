# celestia-node

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: v0.13.6](https://img.shields.io/badge/AppVersion-v0.13.6-informational?style=flat-square)

Celestia Node

**Homepage:** <https://celestia.org>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Celestia Labs |  | <https://github.com/celestiaorg/celestia-helm-charts> |

## Source Code

* <https://github.com/celestiaorg/celestia-node>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clusterDomain | string | `"cluster.local"` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.enabled | bool | `false` |  |
| extraDeploy | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| global.compatibility.openshift.adaptSecurityContext | string | `"auto"` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.imageRegistry | string | `""` |  |
| global.storageClass | string | `""` |  |
| kubeVersion | string | `""` |  |
| metrics.enabled | bool | `false` |  |
| metrics.serviceMonitor.annotations | object | `{}` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.honorLabels | bool | `false` |  |
| metrics.serviceMonitor.interval | string | `""` |  |
| metrics.serviceMonitor.jobLabel | string | `""` |  |
| metrics.serviceMonitor.labels | object | `{}` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| nameOverride | string | `""` |  |
| namespaceOverride | string | `""` |  |
| networkPolicy | with the correct destination port | `{"allowExternal":true,"allowExternalEgress":true,"enabled":true,"extraEgress":[],"extraIngress":[],"ingressNSMatchLabels":{},"ingressNSPodMatchLabels":{}}` | . |
| networkPolicy.enabled | bool | `true` | enable network policy, true by default |
| node.affinity | object | `{}` |  |
| node.args[0] | string | `"bridge"` |  |
| node.args[1] | string | `"start"` |  |
| node.args[2] | string | `"--node.store=\"$(CELESTIA_HOME)\""` |  |
| node.args[3] | string | `"--metrics"` |  |
| node.args[4] | string | `"--metrics.tls=false"` |  |
| node.args[5] | string | `"--p2p.metrics"` |  |
| node.automountServiceAccountToken | bool | `false` | mount service account token in node pods |
| node.command | list | `["/bin/celestia"]` | command for the celestia-node  |
| node.config.configtoml.Core.GRPCPort | string | `"9090"` |  |
| node.config.configtoml.Core.IP | string | `""` |  |
| node.config.configtoml.Core.RPCPort | string | `"26657"` |  |
| node.config.configtoml.DASer.BackgroundStoreInterval | string | `"10m0s"` |  |
| node.config.configtoml.DASer.ConcurrencyLimit | int | `16` |  |
| node.config.configtoml.DASer.SampleFrom | int | `1` |  |
| node.config.configtoml.DASer.SampleTimeout | string | `"2m40s"` |  |
| node.config.configtoml.DASer.SamplingRange | int | `100` |  |
| node.config.configtoml.DASer.SamplingWindow | string | `"0s"` |  |
| node.config.configtoml.Gateway.Address | string | `"localhost"` |  |
| node.config.configtoml.Gateway.Enabled | bool | `false` |  |
| node.config.configtoml.Gateway.Port | string | `"26659"` |  |
| node.config.configtoml.Header.Client.MaxHeadersPerRangeRequest | int | `64` |  |
| node.config.configtoml.Header.Client.RangeRequestTimeout | string | `"8s"` |  |
| node.config.configtoml.Header.Server.RangeRequestTimeout | string | `"10s"` |  |
| node.config.configtoml.Header.Server.ReadDeadline | string | `"1m0s"` |  |
| node.config.configtoml.Header.Server.WriteDeadline | string | `"8s"` |  |
| node.config.configtoml.Header.Store.IndexCacheSize | int | `2048` |  |
| node.config.configtoml.Header.Store.StoreCacheSize | int | `512` |  |
| node.config.configtoml.Header.Store.WriteBatchSize | int | `512` |  |
| node.config.configtoml.Header.Syncer.TrustingPeriod | string | `"336h0m0s"` |  |
| node.config.configtoml.Header.TrustedHash | string | `""` |  |
| node.config.configtoml.Header.TrustedPeers | list | `[]` |  |
| node.config.configtoml.Node.ShutdownTimeout | string | `"20s"` |  |
| node.config.configtoml.Node.StartupTimeout | string | `"20s"` |  |
| node.config.configtoml.P2P.AnnounceAddresses | list | `[]` |  |
| node.config.configtoml.P2P.ConnManager.GracePeriod | string | `"1m0s"` |  |
| node.config.configtoml.P2P.ConnManager.High | int | `100` |  |
| node.config.configtoml.P2P.ConnManager.Low | int | `50` |  |
| node.config.configtoml.P2P.ListenAddresses[0] | string | `"/ip4/0.0.0.0/udp/2121/quic-v1/webtransport"` |  |
| node.config.configtoml.P2P.ListenAddresses[1] | string | `"/ip6/::/udp/2121/quic-v1/webtransport"` |  |
| node.config.configtoml.P2P.ListenAddresses[2] | string | `"/ip4/0.0.0.0/udp/2121/quic-v1"` |  |
| node.config.configtoml.P2P.ListenAddresses[3] | string | `"/ip6/::/udp/2121/quic-v1"` |  |
| node.config.configtoml.P2P.ListenAddresses[4] | string | `"/ip4/0.0.0.0/tcp/2121"` |  |
| node.config.configtoml.P2P.ListenAddresses[5] | string | `"/ip6/::/tcp/2121"` |  |
| node.config.configtoml.P2P.MutualPeers | list | `[]` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[0] | string | `"/ip4/127.0.0.1/udp/2121/quic-v1/webtransport"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[1] | string | `"/ip4/0.0.0.0/udp/2121/quic-v1/webtransport"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[2] | string | `"/ip6/::/udp/2121/quic-v1/webtransport"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[3] | string | `"/ip4/0.0.0.0/udp/2121/quic-v1"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[4] | string | `"/ip4/127.0.0.1/udp/2121/quic-v1"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[5] | string | `"/ip6/::/udp/2121/quic-v1"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[6] | string | `"/ip4/0.0.0.0/tcp/2121"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[7] | string | `"/ip4/127.0.0.1/tcp/2121"` |  |
| node.config.configtoml.P2P.NoAnnounceAddresses[8] | string | `"/ip6/::/tcp/2121"` |  |
| node.config.configtoml.P2P.PeerExchange | bool | `false` |  |
| node.config.configtoml.P2P.RoutingTableRefreshPeriod | string | `"1m0s"` |  |
| node.config.configtoml.RPC.Address | string | `"localhost"` |  |
| node.config.configtoml.RPC.Port | string | `"26658"` |  |
| node.config.configtoml.RPC.SkipAuth | bool | `false` |  |
| node.config.configtoml.Share.Discovery.AdvertiseInterval | string | `"1h0m0s"` |  |
| node.config.configtoml.Share.Discovery.PeersLimit | int | `5` |  |
| node.config.configtoml.Share.EDSStoreParams.BlockstoreCacheSize | int | `128` |  |
| node.config.configtoml.Share.EDSStoreParams.GCInterval | string | `"0s"` |  |
| node.config.configtoml.Share.EDSStoreParams.RecentBlocksCacheSize | int | `10` |  |
| node.config.configtoml.Share.LightAvailability.SampleAmount | int | `16` |  |
| node.config.configtoml.Share.PeerManagerParams.EnableBlackListing | bool | `false` |  |
| node.config.configtoml.Share.PeerManagerParams.GcInterval | string | `"30s"` |  |
| node.config.configtoml.Share.PeerManagerParams.PeerCooldown | string | `"3s"` |  |
| node.config.configtoml.Share.PeerManagerParams.PoolValidationTimeout | string | `"2m0s"` |  |
| node.config.configtoml.Share.ShrExEDSParams.BufferSize | int | `32768` |  |
| node.config.configtoml.Share.ShrExEDSParams.ConcurrencyLimit | int | `10` |  |
| node.config.configtoml.Share.ShrExEDSParams.HandleRequestTimeout | string | `"1m0s"` |  |
| node.config.configtoml.Share.ShrExEDSParams.ServerReadTimeout | string | `"5s"` |  |
| node.config.configtoml.Share.ShrExEDSParams.ServerWriteTimeout | string | `"1m0s"` |  |
| node.config.configtoml.Share.ShrExNDParams.ConcurrencyLimit | int | `10` |  |
| node.config.configtoml.Share.ShrExNDParams.HandleRequestTimeout | string | `"1m0s"` |  |
| node.config.configtoml.Share.ShrExNDParams.ServerReadTimeout | string | `"5s"` |  |
| node.config.configtoml.Share.ShrExNDParams.ServerWriteTimeout | string | `"1m0s"` |  |
| node.config.configtoml.Share.UseShareExchange | bool | `true` |  |
| node.config.configtoml.State.KeyringAccName | string | `""` |  |
| node.config.configtoml.State.KeyringBackend | string | `"test"` |  |
| node.containerPorts | object | `{"p2p":2121,"profiling":6060,"prometheus":8890,"rest":26659,"rpc":26658}` | Container ports for the node |
| node.containerPorts.p2p | int | `2121` | P2P container port, 2121 by default |
| node.containerPorts.profiling | int | `6060` | Profiling container port, 6060 by default |
| node.containerPorts.prometheus | int | `8890` | Prometheus container port, 8890 by default |
| node.containerPorts.rest | int | `26659` | REST container port, 26659 by default |
| node.containerPorts.rpc | int | `26658` | RPC container port, 26658 by default |
| node.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":true,"privileged":false,"readOnlyRootFilesystem":true,"runAsGroup":10001,"runAsNonRoot":true,"runAsUser":10001,"seLinuxOptions":{},"seccompProfile":{"type":"RuntimeDefault"}}` | container security context for the node |
| node.containerSecurityContext.allowPrivilegeEscalation | bool | `false` | allowPrivilegeEscalation in node container, false by default   |
| node.containerSecurityContext.capabilities | object | `{"drop":["ALL"]}` | capabilities to be dropped in node container, ["ALL"] by default |
| node.containerSecurityContext.enabled | bool | `true` | enable container security context for the node, true by default |
| node.containerSecurityContext.privileged | bool | `false` | privileged in node container, false by default |
| node.containerSecurityContext.readOnlyRootFilesystem | bool | `true` | readOnlyRootFilesystem in node container, true by default |
| node.containerSecurityContext.runAsGroup | int | `10001` | runAsGroup in node container, 10001 by default |
| node.containerSecurityContext.runAsNonRoot | bool | `true` | runAsNonRoot in node container, true by default |
| node.containerSecurityContext.runAsUser | int | `10001` | runAsUser in node container, 10001 by default |
| node.containerSecurityContext.seLinuxOptions | object | `{}` | SELinux options in node container, {} by default |
| node.containerSecurityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | seccomp profile in node container, RuntimeDefault by default |
| node.customLivenessProbe | object | `{}` |  |
| node.customReadinessProbe | object | `{}` |  |
| node.customStartupProbe | object | `{}` |  |
| node.daemonsetAnnotations | object | `{}` |  |
| node.deploymentAnnotations | object | `{}` |  |
| node.existingConfigmap | string | `nil` |  |
| node.extraEnvVars | list | `[]` |  |
| node.extraEnvVarsCM | string | `""` |  |
| node.extraEnvVarsSecret | string | `""` |  |
| node.extraVolumeMounts | list | `[]` |  |
| node.extraVolumes | list | `[]` |  |
| node.hostAliases | list | `[]` |  |
| node.image | object | `{"digest":"","pullPolicy":"IfNotPresent","pullSecrets":[],"registry":"ghcr.io","repository":"celestiaorg/celestia-node","tag":"v1.9.0"}` | image parameters for the image |
| node.image.pullPolicy | string | `"IfNotPresent"` | pull policy for the image, IfNotPresent by default |
| node.image.registry | string | `"ghcr.io"` | registry for the image, GitHub Container Registry by default |
| node.image.repository | string | `"celestiaorg/celestia-node"` | repository for the image, celestiaorg/celestia-node by default |
| node.image.tag | string | `"v1.9.0"` | tag for the image, v1.9.0 by default |
| node.initContainers | list | `[]` |  |
| node.lifecycleHooks | object | `{}` |  |
| node.livenessProbe | object | `{"enabled":false,"failureThreshold":3,"initialDelaySeconds":0,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | liveness probe for the node |
| node.livenessProbe.enabled | bool | `false` | enable liveness probe on node containers, false by default |
| node.livenessProbe.failureThreshold | int | `3` | failure threshold for livenessProbe, 3 by default |
| node.livenessProbe.initialDelaySeconds | int | `0` | initial delay seconds for livenessProbe, 0 by default |
| node.livenessProbe.periodSeconds | int | `10` | period seconds for livenessProbe, 10 by default |
| node.livenessProbe.successThreshold | int | `1` | success threshold for livenessProbe, 1 by default |
| node.livenessProbe.timeoutSeconds | int | `1` | timeout seconds for livenessProbe, 1 by default |
| node.nodeAffinityPreset.key | string | `""` |  |
| node.nodeAffinityPreset.type | string | `""` |  |
| node.nodeAffinityPreset.values | list | `[]` |  |
| node.nodeSelector | object | `{}` |  |
| node.otelAgent.config | object | `{"exporters":{"otlphttp":{"auth":{"authenticator":"basicauth/otlp"},"endpoint":"https://otlp-gateway-prod-us-central-0.grafana.net/otlp"},"prometheus":{"endpoint":"localhost:8889"}},"extensions":{"basicauth/otlp":{"client_auth":{"password":"${GRAFANA_OTEL_TOKEN}","username":"${GRAFANA_OTEL_USERNAME}"}}},"receivers":{"otlp":{"protocols":{"grpc":{"endpoint":"localhost:4317"},"http":{"endpoint":"localhost:4318"}}},"prometheus":{"config":{"scrape_configs":[{"job_name":"${JOB_NAME}","scrape_interval":"10s","static_configs":[{"targets":["localhost:26660"]}]}]}}},"service":{"extensions":["basicauth/otlp"],"pipelines":{"metrics":{"exporters":["otlphttp","prometheus"],"receivers":["otlp","prometheus"]}},"telemetry":{"logs":{"level":"INFO"},"metrics":{"address":"localhost:8888","level":"basic"}}}}` | config for the otel agent (See: https://opentelemetry.io/docs/collector/configuration/) |
| node.otelAgent.enabled | bool | `false` | enable otel agent for the node, false by default |
| node.otelAgent.grafanaOtelSecret | object | `{"name":"SET_IT"}` | grafana otel secret for the node |
| node.otelAgent.grafanaOtelSecret.name | string | `"SET_IT"` | name of the grafana otel secret, it must be set |
| node.otelAgent.image | object | `{"digest":"","pullPolicy":"IfNotPresent","registry":"ghcr.io","repository":"open-telemetry/opentelemetry-collector-releases/opentelemetry-collector-contrib","tag":"0.102.0"}` | image for the otel agent, ghcr.io/open-telemetry/opentelemetry-collector-releases/opentelemetry-collector-contrib:0.102.0 by default |
| node.otelAgent.resources | object | `{}` |  |
| node.otelAgent.resourcesPreset | string | `"nano"` |  |
| node.pdb.create | bool | `false` |  |
| node.pdb.maxUnavailable | string | `""` |  |
| node.pdb.minAvailable | int | `1` |  |
| node.podAffinityPreset | string | `""` |  |
| node.podAnnotations | object | `{}` |  |
| node.podAntiAffinityPreset | string | `"soft"` |  |
| node.podLabels | object | `{}` |  |
| node.podManagementPolicy | string | `"OrderedReady"` |  |
| node.podSecurityContext | object | `{"enabled":true,"fsGroup":10001,"fsGroupChangePolicy":"Always","supplementalGroups":[],"sysctls":[]}` | pod security context for the node |
| node.podSecurityContext.enabled | bool | `true` | enable pod security context for the node, true by default |
| node.podSecurityContext.fsGroup | int | `10001` | fsGroup in node pods' Security Context, 10001 by default |
| node.podSecurityContext.fsGroupChangePolicy | string | `"Always"` | filesystem group change policy for node pods, Always by default |
| node.podSecurityContext.supplementalGroups | list | `[]` | filesystem extra groups for node pods, [] by default |
| node.podSecurityContext.sysctls | list | `[]` | kernel settings using the sysctl interface for node pods, [] by default |
| node.priorityClassName | string | `""` |  |
| node.readinessProbe.enabled | bool | `false` | enable readiness probe on node containers, false by default |
| node.readinessProbe.failureThreshold | int | `3` | failure threshold for readinessProbe, 3 by default |
| node.readinessProbe.initialDelaySeconds | int | `0` | initial delay seconds for readinessProbe, 0 by default |
| node.readinessProbe.periodSeconds | int | `10` | period seconds for readinessProbe, 10 by default |
| node.readinessProbe.successThreshold | int | `1` | success threshold for readinessProbe, 1 by default |
| node.readinessProbe.timeoutSeconds | int | `1` | timeout seconds for readinessProbe, 1 by default |
| node.replicaCount | int | `1` | number of node replicas to deploy, 1 by default |
| node.resources.limits | object | `{"cpu":6,"memory":"16Gi"}` | limits for the node |
| node.resources.limits.cpu | int | `6` | cpu limits for the node, 2 by default |
| node.resources.limits.memory | string | `"16Gi"` | memory limits for the node, 8Gi by default |
| node.resources.requests | object | `{"cpu":6,"memory":"16Gi"}` | requests for the node |
| node.resources.requests.cpu | int | `6` | cpu requests for the node, 2 by default |
| node.resources.requests.memory | string | `"16Gi"` | memory requests for the node, 8Gi by default |
| node.resourcesPreset | string | `"nano"` | more information: https://github.com/bitnami/charts/blob/main/bitnami/common/templates/_resources.tpl#L15 |
| node.schedulerName | string | `""` |  |
| node.settings.address | string | `"SET_IT"` | address for the celestia-node, it must be set |
| node.settings.home | string | `"/home/celestia"` | home directory for the celestia-node, defaults to /home/celestia |
| node.settings.node_id | string | `"SET_IT"` | node ID for the celestia-node, it must be set |
| node.settings.secret.name | string | `"SET_IT"` | name of the secret, it must be set |
| node.sidecars | list | `[]` |  |
| node.startupProbe | object | `{"enabled":false,"initialDelaySeconds":0,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | startup probe for the node   |
| node.startupProbe.enabled | bool | `false` | enable startup probe on node containers, false by default |
| node.startupProbe.initialDelaySeconds | int | `0` | initial delay seconds for startupProbe, 0 by default |
| node.startupProbe.periodSeconds | int | `10` | period seconds for startupProbe, 10 by default |
| node.startupProbe.successThreshold | int | `1` | failure threshold for startupProbe, 3 by default |
| node.startupProbe.timeoutSeconds | int | `1` | timeout seconds for startupProbe, 1 by default |
| node.statefulsetAnnotations | object | `{}` |  |
| node.terminationGracePeriodSeconds | string | `""` |  |
| node.tolerations | list | `[]` |  |
| node.topologySpreadConstraints | list | `[]` |  |
| node.updateStrategy.type | string | `"RollingUpdate"` |  |
| persistence | object | `{"accessModes":["ReadWriteOnce"],"annotations":{},"dataSource":{},"enabled":true,"existingClaim":"","mountPath":"/bitnami/app/data","selector":{},"size":"250Gi","storageClass":"","subPath":""}` | persistence parameters |
| rbac.create | bool | `false` |  |
| rbac.rules | list | `[]` |  |
| service.external | object | `{"annotations":{},"enabled":true,"externalTrafficPolicy":"Cluster","extraPorts":[],"loadBalancerIP":"","loadBalancerSourceRanges":[],"nodePorts":{"p2p":"","profiling":"","prometheus":"","rest":"","rpc":""},"ports":{"p2p":2121,"rest":26659,"rpc":26658},"sessionAffinity":"None","sessionAffinityConfig":{},"type":"LoadBalancer"}` | external service parameters |
| service.external.enabled | bool | `true` | enable external service, true by default  |
| service.external.ports.p2p | int | `2121` | P2P container port, 2121 by default |
| service.external.ports.rest | int | `26659` | REST container port, 26659 by default |
| service.external.ports.rpc | int | `26658` | RPC container port, 26658 by default |
| service.external.type | string | `"LoadBalancer"` | external service type, LoadBalancer by default  |
| service.internal.annotations | object | `{}` |  |
| service.internal.clusterIP | string | `""` |  |
| service.internal.ports | object | `{"p2p":2121,"profiling":6060,"prometheus":8890,"rest":26659,"rpc":26658}` | Ports for the celestia-node |
| service.internal.ports.p2p | int | `2121` | P2P container port, 2121 by default |
| service.internal.ports.profiling | int | `6060` | Profiling container port, 6060 by default |
| service.internal.ports.prometheus | int | `8890` | Prometheus container port, 8890 by default |
| service.internal.ports.rest | int | `26659` | REST container port, 26659 by default |
| service.internal.ports.rpc | int | `26658` | RPC container port, 26658 by default |
| service.internal.sessionAffinity | string | `"None"` |  |
| service.internal.sessionAffinityConfig | object | `{}` |  |
| service.internal.type | string | `"ClusterIP"` | service type, ClusterIP by default |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| volumePermissions.containerSecurityContext.enabled | bool | `true` |  |
| volumePermissions.containerSecurityContext.runAsUser | int | `0` |  |
| volumePermissions.containerSecurityContext.seLinuxOptions | object | `{}` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/os-shell"` |  |
| volumePermissions.image.tag | string | `"12-debian-12-r22"` |  |
| volumePermissions.resources | object | `{}` |  |
| volumePermissions.resourcesPreset | string | `"nano"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
