# celestia-app

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: v1.9.0](https://img.shields.io/badge/AppVersion-v1.9.0-informational?style=flat-square)

Celestia App

**Homepage:** <https://celestia.org>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Celestia Labs |  | <https://github.com/celestiaorg/celestia-helm-charts> |

## Source Code

* <https://github.com/celestiaorg/celestia-app>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| app.affinity | object | `{}` |  |
| app.args[0] | string | `"start"` |  |
| app.args[1] | string | `"--home"` |  |
| app.args[2] | string | `"$(CELESTIA_HOME)"` |  |
| app.automountServiceAccountToken | bool | `false` | mount service account token in app pods |
| app.command | list | `["celestia-appd"]` | command for the celestia-app  |
| app.config.apptoml.api.address | string | `"tcp://0.0.0.0:1317"` |  |
| app.config.apptoml.api.enable | bool | `false` |  |
| app.config.apptoml.api.enabled_unsafe_cors | bool | `false` |  |
| app.config.apptoml.api.max_open_connections | int | `1000` |  |
| app.config.apptoml.api.rpc_max_body_bytes | int | `1000000` |  |
| app.config.apptoml.api.rpc_read_timeout | int | `10` |  |
| app.config.apptoml.api.rpc_write_timeout | int | `0` |  |
| app.config.apptoml.api.swagger | bool | `false` |  |
| app.config.apptoml.app_db_backend | string | `""` |  |
| app.config.apptoml.grpc.address | string | `"0.0.0.0:9090"` |  |
| app.config.apptoml.grpc.enable | bool | `false` |  |
| app.config.apptoml.grpc.max_recv_msg_size | string | `"10485760"` |  |
| app.config.apptoml.grpc.max_send_msg_size | string | `"2147483647"` |  |
| app.config.apptoml.grpc_web.address | string | `"0.0.0.0:9091"` |  |
| app.config.apptoml.grpc_web.enable | bool | `false` |  |
| app.config.apptoml.grpc_web.enable_unsafe_cors | bool | `false` |  |
| app.config.apptoml.halt_height | int | `0` |  |
| app.config.apptoml.halt_time | int | `0` |  |
| app.config.apptoml.iavl_cache_size | int | `781250` |  |
| app.config.apptoml.iavl_disable_fastnode | bool | `false` |  |
| app.config.apptoml.iavl_lazy_loading | bool | `false` |  |
| app.config.apptoml.index_events | list | `[]` |  |
| app.config.apptoml.inter_block_cache | bool | `true` |  |
| app.config.apptoml.min_retain_blocks | int | `0` |  |
| app.config.apptoml.minimum_gas_prices | string | `"0.002utia"` |  |
| app.config.apptoml.pruning | string | `"default"` |  |
| app.config.apptoml.pruning_interval | string | `"0"` |  |
| app.config.apptoml.pruning_keep_recent | string | `"0"` |  |
| app.config.apptoml.rosetta.address | string | `":8080"` |  |
| app.config.apptoml.rosetta.blockchain | string | `"app"` |  |
| app.config.apptoml.rosetta.denom_to_suggest | string | `"uatom"` |  |
| app.config.apptoml.rosetta.enable | bool | `false` |  |
| app.config.apptoml.rosetta.enable_fee_suggestion | bool | `false` |  |
| app.config.apptoml.rosetta.gas_to_suggest | int | `210000` |  |
| app.config.apptoml.rosetta.network | string | `"network"` |  |
| app.config.apptoml.rosetta.offline | bool | `false` |  |
| app.config.apptoml.rosetta.retries | int | `3` |  |
| app.config.apptoml.state_sync.snapshot_interval | int | `1500` |  |
| app.config.apptoml.state_sync.snapshot_keep_recent | int | `2` |  |
| app.config.apptoml.store.streamers | list | `[]` |  |
| app.config.apptoml.streamers.file.fsync | string | `"false"` |  |
| app.config.apptoml.streamers.file.keys[0] | string | `"*"` |  |
| app.config.apptoml.streamers.file.output_metadata | string | `"true"` |  |
| app.config.apptoml.streamers.file.prefix | string | `""` |  |
| app.config.apptoml.streamers.file.stop_node_on_error | string | `"true"` |  |
| app.config.apptoml.streamers.file.write_dir | string | `""` |  |
| app.config.apptoml.telemetry.enable_hostname | bool | `false` |  |
| app.config.apptoml.telemetry.enable_hostname_label | bool | `false` |  |
| app.config.apptoml.telemetry.enable_service_label | bool | `false` |  |
| app.config.apptoml.telemetry.enabled | bool | `false` |  |
| app.config.apptoml.telemetry.global_labels | list | `[]` |  |
| app.config.apptoml.telemetry.prometheus_retention_time | int | `0` |  |
| app.config.apptoml.telemetry.service_name | string | `""` |  |
| app.config.clienttoml.broadcast_mode | string | `"sync"` |  |
| app.config.clienttoml.chain_id | string | `"celestia"` |  |
| app.config.clienttoml.keyring_backend | string | `"test"` |  |
| app.config.clienttoml.node | string | `"tcp://localhost:26657"` |  |
| app.config.clienttoml.output | string | `"text"` |  |
| app.config.configtoml.abci | string | `"socket"` |  |
| app.config.configtoml.consensus.create_empty_blocks | bool | `true` |  |
| app.config.configtoml.consensus.create_empty_blocks_interval | string | `"0s"` |  |
| app.config.configtoml.consensus.double_sign_check_height | int | `0` |  |
| app.config.configtoml.consensus.peer_gossip_sleep_duration | string | `"100ms"` |  |
| app.config.configtoml.consensus.peer_query_maj23_sleep_duration | string | `"2s"` |  |
| app.config.configtoml.consensus.skip_timeout_commit | bool | `false` |  |
| app.config.configtoml.consensus.timeout_commit | string | `"11s"` |  |
| app.config.configtoml.consensus.timeout_precommit | string | `"1s"` |  |
| app.config.configtoml.consensus.timeout_precommit_delta | string | `"500ms"` |  |
| app.config.configtoml.consensus.timeout_prevote | string | `"1s"` |  |
| app.config.configtoml.consensus.timeout_prevote_delta | string | `"500ms"` |  |
| app.config.configtoml.consensus.timeout_propose | string | `"10s"` |  |
| app.config.configtoml.consensus.timeout_propose_delta | string | `"500ms"` |  |
| app.config.configtoml.consensus.wal_file | string | `"data/cs.wal/wal"` |  |
| app.config.configtoml.db_backend | string | `"goleveldb"` |  |
| app.config.configtoml.db_dir | string | `"data"` |  |
| app.config.configtoml.fast_sync | bool | `true` |  |
| app.config.configtoml.fastsync.version | string | `"v0"` |  |
| app.config.configtoml.filter_peers | bool | `false` |  |
| app.config.configtoml.genesis_file | string | `"config/genesis.json"` |  |
| app.config.configtoml.instrumentation.influx_batch_size | int | `20` |  |
| app.config.configtoml.instrumentation.influx_bucket | string | `"e2e"` |  |
| app.config.configtoml.instrumentation.influx_org | string | `"celestia"` |  |
| app.config.configtoml.instrumentation.influx_tables[0] | string | `"mempool_tx"` |  |
| app.config.configtoml.instrumentation.influx_tables[1] | string | `"mempool_peer_state"` |  |
| app.config.configtoml.instrumentation.influx_tables[2] | string | `"mempool_rejected"` |  |
| app.config.configtoml.instrumentation.influx_tables[3] | string | `"consensus_round_state"` |  |
| app.config.configtoml.instrumentation.influx_tables[4] | string | `"consensus_block_parts"` |  |
| app.config.configtoml.instrumentation.influx_tables[5] | string | `"consensus_block"` |  |
| app.config.configtoml.instrumentation.influx_tables[6] | string | `"consensus_vote"` |  |
| app.config.configtoml.instrumentation.influx_token | string | `""` |  |
| app.config.configtoml.instrumentation.influx_url | string | `""` |  |
| app.config.configtoml.instrumentation.max_open_connections | int | `3` |  |
| app.config.configtoml.instrumentation.namespace | string | `"cometbft"` |  |
| app.config.configtoml.instrumentation.prometheus | bool | `false` |  |
| app.config.configtoml.instrumentation.prometheus_listen_addr | string | `":26660"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[0] | string | `"cpu"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[1] | string | `"alloc_objects"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[2] | string | `"inuse_objects"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[3] | string | `"goroutines"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[4] | string | `"mutex_count"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[5] | string | `"mutex_duration"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[6] | string | `"block_count"` |  |
| app.config.configtoml.instrumentation.pyroscope_profile_types[7] | string | `"block_duration"` |  |
| app.config.configtoml.instrumentation.pyroscope_trace | bool | `false` |  |
| app.config.configtoml.instrumentation.pyroscope_url | string | `""` |  |
| app.config.configtoml.log_format | string | `"plain"` |  |
| app.config.configtoml.log_level | string | `"info"` |  |
| app.config.configtoml.mempool.broadcast | bool | `true` |  |
| app.config.configtoml.mempool.cache_size | int | `10000` |  |
| app.config.configtoml.mempool.keep_invalid_txs_in_cache | bool | `false` |  |
| app.config.configtoml.mempool.max_batch_bytes | int | `0` |  |
| app.config.configtoml.mempool.max_gossip_delay | string | `"0s"` |  |
| app.config.configtoml.mempool.max_tx_bytes | int | `7897088` |  |
| app.config.configtoml.mempool.max_txs_bytes | int | `39485440` |  |
| app.config.configtoml.mempool.recheck | bool | `true` |  |
| app.config.configtoml.mempool.size | int | `5000` |  |
| app.config.configtoml.mempool.ttl_duration | string | `"1m15s"` |  |
| app.config.configtoml.mempool.ttl_num_blocks | int | `5` |  |
| app.config.configtoml.mempool.version | string | `"v1"` |  |
| app.config.configtoml.mempool.wal_dir | string | `""` |  |
| app.config.configtoml.moniker | string | `"app"` |  |
| app.config.configtoml.node_key_file | string | `"config/node_key.json"` |  |
| app.config.configtoml.p2p.addr_book_file | string | `"config/addrbook.json"` |  |
| app.config.configtoml.p2p.addr_book_strict | bool | `true` |  |
| app.config.configtoml.p2p.allow_duplicate_ip | bool | `false` |  |
| app.config.configtoml.p2p.dial_timeout | string | `"3s"` |  |
| app.config.configtoml.p2p.external_address | string | `""` |  |
| app.config.configtoml.p2p.flush_throttle_timeout | string | `"100ms"` |  |
| app.config.configtoml.p2p.handshake_timeout | string | `"20s"` |  |
| app.config.configtoml.p2p.laddr | string | `"tcp://0.0.0.0:26656"` |  |
| app.config.configtoml.p2p.max_num_inbound_peers | int | `40` |  |
| app.config.configtoml.p2p.max_num_outbound_peers | int | `10` |  |
| app.config.configtoml.p2p.max_packet_msg_payload_size | int | `1024` |  |
| app.config.configtoml.p2p.persistent_peers | string | `""` |  |
| app.config.configtoml.p2p.persistent_peers_max_dial_period | string | `"0s"` |  |
| app.config.configtoml.p2p.pex | bool | `true` |  |
| app.config.configtoml.p2p.private_peer_ids | string | `""` |  |
| app.config.configtoml.p2p.recv_rate | int | `5120000` |  |
| app.config.configtoml.p2p.seed_mode | bool | `false` |  |
| app.config.configtoml.p2p.seeds | string | `""` |  |
| app.config.configtoml.p2p.send_rate | int | `5120000` |  |
| app.config.configtoml.p2p.unconditional_peer_ids | string | `""` |  |
| app.config.configtoml.p2p.upnp | bool | `false` |  |
| app.config.configtoml.priv_validator_key_file | string | `"config/priv_validator_key.json"` |  |
| app.config.configtoml.priv_validator_laddr | string | `""` |  |
| app.config.configtoml.priv_validator_state_file | string | `"data/priv_validator_state.json"` |  |
| app.config.configtoml.proxy_app | string | `"tcp://127.0.0.1:26658"` |  |
| app.config.configtoml.rpc.cors_allowed_headers[0] | string | `"Origin"` |  |
| app.config.configtoml.rpc.cors_allowed_headers[1] | string | `"Accept"` |  |
| app.config.configtoml.rpc.cors_allowed_headers[2] | string | `"Content-Type"` |  |
| app.config.configtoml.rpc.cors_allowed_headers[3] | string | `"X-Requested-With"` |  |
| app.config.configtoml.rpc.cors_allowed_headers[4] | string | `"X-Server-Time"` |  |
| app.config.configtoml.rpc.cors_allowed_methods[0] | string | `"HEAD"` |  |
| app.config.configtoml.rpc.cors_allowed_methods[1] | string | `"GET"` |  |
| app.config.configtoml.rpc.cors_allowed_methods[2] | string | `"POST"` |  |
| app.config.configtoml.rpc.cors_allowed_origins | list | `[]` |  |
| app.config.configtoml.rpc.experimental_close_on_slow_client | bool | `false` |  |
| app.config.configtoml.rpc.experimental_subscription_buffer_size | int | `200` |  |
| app.config.configtoml.rpc.experimental_websocket_write_buffer_size | int | `200` |  |
| app.config.configtoml.rpc.grpc_laddr | string | `""` |  |
| app.config.configtoml.rpc.grpc_max_open_connections | int | `900` |  |
| app.config.configtoml.rpc.laddr | string | `"tcp://127.0.0.1:26657"` |  |
| app.config.configtoml.rpc.max_body_bytes | int | `8388608` |  |
| app.config.configtoml.rpc.max_header_bytes | int | `1048576` |  |
| app.config.configtoml.rpc.max_open_connections | int | `900` |  |
| app.config.configtoml.rpc.max_subscription_clients | int | `100` |  |
| app.config.configtoml.rpc.max_subscriptions_per_client | int | `5` |  |
| app.config.configtoml.rpc.pprof_laddr | string | `"localhost:6060"` |  |
| app.config.configtoml.rpc.timeout_broadcast_tx_commit | string | `"50s"` |  |
| app.config.configtoml.rpc.tls_cert_file | string | `""` |  |
| app.config.configtoml.rpc.tls_key_file | string | `""` |  |
| app.config.configtoml.rpc.unsafe | bool | `false` |  |
| app.config.configtoml.statesync.chunk_fetchers | string | `"4"` |  |
| app.config.configtoml.statesync.chunk_request_timeout | string | `"10s"` |  |
| app.config.configtoml.statesync.discovery_time | string | `"15s"` |  |
| app.config.configtoml.statesync.enable | bool | `false` |  |
| app.config.configtoml.statesync.rpc_servers | string | `""` |  |
| app.config.configtoml.statesync.temp_dir | string | `""` |  |
| app.config.configtoml.statesync.trust_hash | string | `""` |  |
| app.config.configtoml.statesync.trust_height | int | `0` |  |
| app.config.configtoml.statesync.trust_period | string | `"168h0m0s"` |  |
| app.config.configtoml.storage.discard_abci_responses | bool | `true` |  |
| app.config.configtoml.tx_index.indexer | string | `"null"` |  |
| app.config.configtoml.tx_index.psql_conn | string | `""` |  |
| app.containerPorts | object | `{"api":1317,"grpc":9090,"p2p":26656,"prometheus":26660,"rpc":26657,"tracing":26661}` | container ports for the app |
| app.containerPorts.api | int | `1317` | API container port, 1317 by default |
| app.containerPorts.grpc | int | `9090` | gRPC container port, 9090 by default |
| app.containerPorts.p2p | int | `26656` | P2P container port, 26656 by default |
| app.containerPorts.prometheus | int | `26660` | Prometheus container port, 26660 by default |
| app.containerPorts.rpc | int | `26657` | RPC container port, 26657 by default |
| app.containerPorts.tracing | int | `26661` | Tracing container port, 26661 by default |
| app.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"enabled":true,"privileged":false,"readOnlyRootFilesystem":true,"runAsGroup":10001,"runAsNonRoot":true,"runAsUser":10001,"seLinuxOptions":{},"seccompProfile":{"type":"RuntimeDefault"}}` | container security context for the app |
| app.containerSecurityContext.allowPrivilegeEscalation | bool | `false` | allowPrivilegeEscalation in app container, false by default   |
| app.containerSecurityContext.capabilities | object | `{"drop":["ALL"]}` | capabilities to be dropped in app container, ["ALL"] by default |
| app.containerSecurityContext.enabled | bool | `true` | enable container security context for the app, true by default |
| app.containerSecurityContext.privileged | bool | `false` | privileged in app container, false by default |
| app.containerSecurityContext.readOnlyRootFilesystem | bool | `true` | readOnlyRootFilesystem in app container, true by default |
| app.containerSecurityContext.runAsGroup | int | `10001` | runAsGroup in app container, 10001 by default |
| app.containerSecurityContext.runAsNonRoot | bool | `true` | runAsNonRoot in app container, true by default |
| app.containerSecurityContext.runAsUser | int | `10001` | runAsUser in app container, 10001 by default |
| app.containerSecurityContext.seLinuxOptions | object | `{}` | SELinux options in app container, {} by default |
| app.containerSecurityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | seccomp profile in app container, RuntimeDefault by default |
| app.customLivenessProbe | object | `{}` |  |
| app.customReadinessProbe | object | `{}` |  |
| app.customStartupProbe | object | `{}` |  |
| app.daemonsetAnnotations | object | `{}` |  |
| app.deploymentAnnotations | object | `{}` |  |
| app.existingConfigmap | string | `nil` |  |
| app.extraEnvVars | list | `[]` |  |
| app.extraEnvVarsCM | string | `""` |  |
| app.extraEnvVarsSecret | string | `""` |  |
| app.extraVolumeMounts | list | `[]` |  |
| app.extraVolumes | list | `[]` |  |
| app.hostAliases | list | `[]` |  |
| app.image | object | `{"digest":"","pullPolicy":"IfNotPresent","pullSecrets":[],"registry":"ghcr.io","repository":"celestiaorg/celestia-app","tag":"v1.9.0"}` | image parameters for the image |
| app.image.pullPolicy | string | `"IfNotPresent"` | pull policy for the image, IfNotPresent by default |
| app.image.registry | string | `"ghcr.io"` | registry for the image, GitHub Container Registry by default |
| app.image.repository | string | `"celestiaorg/celestia-app"` | repository for the image, celestiaorg/celestia-app by default |
| app.image.tag | string | `"v1.9.0"` | tag for the image, v1.9.0 by default |
| app.initContainers | list | `[]` |  |
| app.lifecycleHooks | object | `{}` |  |
| app.livenessProbe | object | `{"enabled":false,"failureThreshold":3,"initialDelaySeconds":0,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | liveness probe for the app |
| app.livenessProbe.enabled | bool | `false` | enable liveness probe on app containers, false by default |
| app.livenessProbe.failureThreshold | int | `3` | failure threshold for livenessProbe, 3 by default |
| app.livenessProbe.initialDelaySeconds | int | `0` | initial delay seconds for livenessProbe, 0 by default |
| app.livenessProbe.periodSeconds | int | `10` | period seconds for livenessProbe, 10 by default |
| app.livenessProbe.successThreshold | int | `1` | success threshold for livenessProbe, 1 by default |
| app.livenessProbe.timeoutSeconds | int | `1` | timeout seconds for livenessProbe, 1 by default |
| app.nodeAffinityPreset.key | string | `""` |  |
| app.nodeAffinityPreset.type | string | `""` |  |
| app.nodeAffinityPreset.values | list | `[]` |  |
| app.nodeSelector | object | `{}` |  |
| app.otelAgent.config | object | `{"exporters":{"otlphttp":{"auth":{"authenticator":"basicauth/otlp"},"endpoint":"https://otlp-gateway-prod-us-central-0.grafana.net/otlp"},"prometheus":{"endpoint":"localhost:8889"}},"extensions":{"basicauth/otlp":{"client_auth":{"password":"${GRAFANA_OTEL_TOKEN}","username":"${GRAFANA_OTEL_USERNAME}"}}},"receivers":{"otlp":{"protocols":{"grpc":{"endpoint":"localhost:4317"},"http":{"endpoint":"localhost:4318"}}},"prometheus":{"config":{"scrape_configs":[{"job_name":"${JOB_NAME}","scrape_interval":"10s","static_configs":[{"targets":["localhost:26660"]}]}]}}},"service":{"extensions":["basicauth/otlp"],"pipelines":{"metrics":{"exporters":["otlphttp","prometheus"],"receivers":["otlp","prometheus"]}},"telemetry":{"logs":{"level":"INFO"},"metrics":{"address":"localhost:8888","level":"basic"}}}}` | config for the otel agent (See: https://opentelemetry.io/docs/collector/configuration/) |
| app.otelAgent.enabled | bool | `false` | enable otel agent for the app, false by default |
| app.otelAgent.grafanaOtelSecret | object | `{"name":"SET_IT"}` | grafana otel secret for the app |
| app.otelAgent.grafanaOtelSecret.name | string | `"SET_IT"` | name of the grafana otel secret, it must be set |
| app.otelAgent.image | object | `{"digest":"","pullPolicy":"IfNotPresent","registry":"ghcr.io","repository":"open-telemetry/opentelemetry-collector-releases/opentelemetry-collector-contrib","tag":"0.102.0"}` | image for the otel agent, ghcr.io/open-telemetry/opentelemetry-collector-releases/opentelemetry-collector-contrib:0.102.0 by default |
| app.otelAgent.resources | object | `{}` |  |
| app.otelAgent.resourcesPreset | string | `"nano"` |  |
| app.pdb.create | bool | `false` |  |
| app.pdb.maxUnavailable | string | `""` |  |
| app.pdb.minAvailable | int | `1` |  |
| app.podAffinityPreset | string | `""` |  |
| app.podAnnotations | object | `{}` |  |
| app.podAntiAffinityPreset | string | `"soft"` |  |
| app.podLabels | object | `{}` |  |
| app.podManagementPolicy | string | `"OrderedReady"` |  |
| app.podSecurityContext | object | `{"enabled":true,"fsGroup":10001,"fsGroupChangePolicy":"Always","supplementalGroups":[],"sysctls":[]}` | pod security context for the app |
| app.podSecurityContext.enabled | bool | `true` | enable pod security context for the app, true by default |
| app.podSecurityContext.fsGroup | int | `10001` | fsGroup in app pods' Security Context, 10001 by default |
| app.podSecurityContext.fsGroupChangePolicy | string | `"Always"` | filesystem group change policy for app pods, Always by default |
| app.podSecurityContext.supplementalGroups | list | `[]` | filesystem extra groups for app pods, [] by default |
| app.podSecurityContext.sysctls | list | `[]` | kernel settings using the sysctl interface for app pods, [] by default |
| app.priorityClassName | string | `""` |  |
| app.readinessProbe.enabled | bool | `false` | enable readiness probe on app containers, false by default |
| app.readinessProbe.failureThreshold | int | `3` | failure threshold for readinessProbe, 3 by default |
| app.readinessProbe.initialDelaySeconds | int | `0` | initial delay seconds for readinessProbe, 0 by default |
| app.readinessProbe.periodSeconds | int | `10` | period seconds for readinessProbe, 10 by default |
| app.readinessProbe.successThreshold | int | `1` | success threshold for readinessProbe, 1 by default |
| app.readinessProbe.timeoutSeconds | int | `1` | timeout seconds for readinessProbe, 1 by default |
| app.replicaCount | int | `1` | number of app replicas to deploy, 1 by default |
| app.resources.limits | object | `{"cpu":2,"memory":"8Gi"}` | limits for the app |
| app.resources.limits.cpu | int | `2` | cpu limits for the app, 2 by default |
| app.resources.limits.memory | string | `"8Gi"` | memory limits for the app, 8Gi by default |
| app.resources.requests | object | `{"cpu":2,"memory":"8Gi"}` | requests for the app |
| app.resources.requests.cpu | int | `2` | cpu requests for the app, 2 by default |
| app.resources.requests.memory | string | `"8Gi"` | memory requests for the app, 8Gi by default |
| app.resourcesPreset | string | `"nano"` | more information: https://github.com/bitnami/charts/blob/main/bitnami/common/templates/_resources.tpl#L15 |
| app.schedulerName | string | `""` |  |
| app.settings.genesisURL | string | `"SET_IT"` | genesis URL for the celestia-app, it must be set |
| app.settings.home | string | `"/home/celestia"` | home directory for the celestia-app, defaults to /home/celestia |
| app.settings.secret.name | string | `"SET_IT"` | name of the secret, it must be set |
| app.sidecars | list | `[]` |  |
| app.startupProbe | object | `{"enabled":false,"initialDelaySeconds":0,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | startup probe for the app   |
| app.startupProbe.enabled | bool | `false` | enable startup probe on app containers, false by default |
| app.startupProbe.initialDelaySeconds | int | `0` | initial delay seconds for startupProbe, 0 by default |
| app.startupProbe.periodSeconds | int | `10` | period seconds for startupProbe, 10 by default |
| app.startupProbe.successThreshold | int | `1` | failure threshold for startupProbe, 3 by default |
| app.startupProbe.timeoutSeconds | int | `1` | timeout seconds for startupProbe, 1 by default |
| app.statefulsetAnnotations | object | `{}` |  |
| app.terminationGracePeriodSeconds | string | `""` |  |
| app.tolerations | list | `[]` |  |
| app.topologySpreadConstraints | list | `[]` |  |
| app.updateStrategy.type | string | `"RollingUpdate"` |  |
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
| persistence | object | `{"accessModes":["ReadWriteOnce"],"annotations":{},"dataSource":{},"enabled":true,"existingClaim":"","mountPath":"/bitnami/app/data","selector":{},"size":"250Gi","storageClass":"","subPath":""}` | persistence parameters |
| rbac.create | bool | `false` |  |
| rbac.rules | list | `[]` |  |
| service.external | object | `{"annotations":{},"enabled":true,"externalTrafficPolicy":"Cluster","extraPorts":[],"loadBalancerIP":"","loadBalancerSourceRanges":[],"nodePorts":{"api":"","grpc":"","p2p":"","prometheus":"","rpc":"","tracing":""},"ports":{"api":1317,"grpc":9090,"p2p":26656,"rpc":26657},"sessionAffinity":"None","sessionAffinityConfig":{},"type":"LoadBalancer"}` | external service parameters |
| service.external.enabled | bool | `true` | enable external service, true by default  |
| service.external.ports.api | int | `1317` | api port, 1317 by default |
| service.external.ports.grpc | int | `9090` | grpc port, 9090 by default |
| service.external.type | string | `"LoadBalancer"` | external service type, LoadBalancer by default  |
| service.internal.annotations | object | `{}` |  |
| service.internal.clusterIP | string | `""` |  |
| service.internal.ports.api | int | `1317` |  |
| service.internal.ports.grpc | int | `9090` |  |
| service.internal.ports.p2p | int | `26656` |  |
| service.internal.ports.prometheus | int | `26660` |  |
| service.internal.ports.rpc | int | `26657` |  |
| service.internal.ports.tracing | int | `26661` |  |
| service.internal.sessionAffinity | string | `"None"` |  |
| service.internal.sessionAffinityConfig | object | `{}` |  |
| service.internal.type | string | `"ClusterIP"` |  |
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
