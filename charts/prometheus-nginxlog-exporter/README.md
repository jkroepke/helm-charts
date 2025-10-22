# prometheus-nginxlog-exporter

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.0.0](https://img.shields.io/badge/AppVersion-v2.0.0-informational?style=flat-square)

Prometheus exporter for Nginx access logs.
It can be used to export metrics from Nginx access logs in a format that Prometheus can scrape.
The exporter supports multiple log formats and can be configured to parse custom log formats.
It also supports TLS and authentication for secure communication with Prometheus.

**Homepage:** <https://github.com/jkroepke/prometheus-nginxlog-exporter/>

## Installation

```shell
helm repo add jkroepke https://jkroepke.github.io/helm-charts/
helm install prometheus-nginxlog-exporter jkroepke/prometheus-nginxlog-exporter
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jkroepke | <mail@jkroepke.de> | <https://github.com/jkroepke> |

## Source Code

* <https://github.com/jkroepke/helm-charts/tree/main/charts/prometheus-nginxlog-exporter>
* <https://github.com/jkroepke/prometheus-nginxlog-exporter/>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| annotations | object | `{}` | Annotations for amazon-eks-pod-identity-webhook deployment |
| config | object | `{}` |  |
| fullnameOverride | string | `""` | String to fully override amazon-eks-pod-identity.fullname template |
| hostNetwork | bool | `false` | Specify if host network should be enabled for amazon-eks-pod-identity-webhook pod |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` | amazon-eks-pod-identity-webhook image registry |
| image.repository | string | `"jkroepke/prometheus-nginxlog-exporter"` | amazon-eks-pod-identity-webhook image repository |
| image.tag | string | `.Chart.AppVersion` | amazon-eks-pod-identity-webhook image tag (immutable tags are recommended). |
| imagePullSecrets | list | `[]` | registry secret names as an array |
| livenessProbe.httpGet.path | string | `"/healthz"` | This is the liveness check endpoint |
| livenessProbe.httpGet.port | string | `"https"` |  |
| livenessProbe.httpGet.scheme | string | `"HTTPS"` |  |
| metrics.serviceMonitor.additionalLabels | object | `{}` | Used to pass Labels that are required by the installed Prometheus Operator |
| metrics.serviceMonitor.enabled | bool | `false` | Create serviceMonitor Resource for scraping metrics using PrometheusOperator |
| metrics.serviceMonitor.endpointAdditionalProperties | object | `{}` | More properties for the endpoint configuration of the service monitor. |
| metrics.serviceMonitor.honorLabels | bool | `false` | honorLabels chooses the metric's labels on collisions with target labels |
| metrics.serviceMonitor.interval | string | `"30s"` | Specify the interval at which metrics should be scraped |
| metrics.serviceMonitor.namespace | string | `""` | Specify the namespace in which the serviceMonitor resource will be created |
| metrics.serviceMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping. |
| metrics.serviceMonitor.scrapeTimeout | string | `""` | Specify the timeout after which the scrape is ended |
| nameOverride | string | `""` | String to partially override amazon-eks-pod-identity-webhook.fullname template (will maintain the release name) |
| namespaceOverride | string | `""` | String to partially override amazon-eks-pod-identity-webhook.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment. Evaluated as a template. |
| podAnnotations | object | `{}` | Annotations for amazon-eks-pod-identity-webhook pods |
| podDisruptionBudget | object | `{"enabled":false,"maxUnavailable":null,"minAvailable":null}` | https://kubernetes.io/docs/tasks/run-application/configure-pdb/ |
| podLabels | object | `{}` | Additional labels for amazon-eks-pod-identity-webhook pods |
| podSecurityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | Pod securityContext: Seccomp profile |
| priorityClassName | string | `""` | PriorityClass applied to deployment |
| readinessProbe.httpGet.path | string | `"/healthz"` | This is the readiness check endpoint |
| readinessProbe.httpGet.port | string | `"https"` |  |
| readinessProbe.httpGet.scheme | string | `"HTTPS"` |  |
| replicaCount | int | `1` | Number of amazon-eks-pod-identity-webhook replicas to deploy |
| resources.limits | object | `{}` | The resources limits for the amazon-eks-pod-identity-webhook container # Example: # limits: #    cpu: 100m #    memory: 128Mi |
| resources.requests | object | `{}` | The requested resources for the amazon-eks-pod-identity-webhook container # Examples: # requests: #    cpu: 100m #    memory: 128Mi |
| securityContext.allowPrivilegeEscalation | bool | `false` | Container securityContext: Allow privilege escalation |
| securityContext.capabilities | object | `{"drop":["ALL"]}` | Container securityContext: Drop capabilities |
| securityContext.readOnlyRootFilesystem | bool | `true` | Container securityContext: Enable read-only root filesystem |
| securityContext.runAsGroup | int | `1` | Container securityContext: Run primary group id |
| securityContext.runAsNonRoot | bool | `false` | Container securityContext: Disable root user |
| securityContext.runAsUser | int | `65534` | Container securityContext: Run user id |
| service.annotations | object | `{}` | Service annotations |
| service.labels | object | `{}` | Service labels. |
| service.type | string | `"ClusterIP"` | Service type |
| serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. |
| serviceAccount.automountServiceAccountToken | bool | `false` | Automount the service account token. Defaults to true. |
| serviceAccount.create | bool | `true` | Enable creation of ServiceAccount for nginx pod |
| serviceAccount.name | string | A name is generated using the `amazon-eks-pod-identity-webhook.fullname` template | The name of the ServiceAccount to use. |
| tolerations | list | `[]` | Tolerations for pod assignment. Evaluated as a template. |