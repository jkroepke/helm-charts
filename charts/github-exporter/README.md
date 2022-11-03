# github-exporter

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![AppVersion: 1.6.5](https://img.shields.io/badge/AppVersion-1.6.5-informational?style=flat-square)

exporter for export github metrics

**Homepage:** <https://github.com/jkroepke/github_exporter>

## Installation

```shell
helm repo add jkroepke https://jkroepke.github.io/helm-charts/
helm install github-exporter jkroepke/github-exporter
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jkroepke | <github@jkroepke.de> | <https://github.com/jkroepke> |

## Source Code

* <https://github.com/adorsys/github_exporter>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| annotations | object | `{}` | annotations of the Deployment. |
| env | object | `{}` |  |
| extraVolumeMounts | string | `""` | Add additional volumes mounts, e. g. for custom secrets |
| extraVolumes | string | `""` | Add additional volumes, e.g. for custom secrets |
| fullnameOverride | string | `""` | String to fully override amazon-eks-pod-identity.fullname template |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` | github_exporter image registry |
| image.repository | string | `"jkroepke/github_exporter"` | github_exporter image repository |
| image.tag | string | `.Chart.AppVersion` | github_exporter image tag (immutable tags are recommended). |
| imagePullSecrets | list | `[]` | registry secret names as an array |
| labels | object | `{}` | labels of the Deployment. |
| metrics.serviceMonitor.annotations | object | `{}` | Additional ServiceMonitor annotations (evaluated as a template) # |
| metrics.serviceMonitor.enabled | bool | `false` | Specify if a ServiceMonitor will be deployed for Prometheus Operator # |
| metrics.serviceMonitor.honorLabels | bool | `false` | honorLabels chooses the metric's labels on collisions with target labels # |
| metrics.serviceMonitor.interval | string | `""` | Interval at which metrics should be scraped. # ref: https://github.com/coreos/prometheus-operator/blob/master/Documentation/api.md#endpoint # e.g: # interval: 10s # |
| metrics.serviceMonitor.jobLabel | string | `""` | The name of the label on the target service to use as the job name in Prometheus # |
| metrics.serviceMonitor.labels | object | `{"release":"kube-prometheus-stack"}` | Extra labels for the ServiceMonitor # |
| metrics.serviceMonitor.metricRelabelings | list | `[]` | Specify additional relabeling of metrics # |
| metrics.serviceMonitor.namespace | string | `""` | Namespace in which Prometheus is running # |
| metrics.serviceMonitor.relabelings | list | `[]` | Specify general relabeling # |
| metrics.serviceMonitor.scrapeTimeout | string | `""` | Timeout after which the scrape is ended # ref: https://github.com/coreos/prometheus-operator/blob/master/Documentation/api.md#endpoint # e.g: # scrapeTimeout: 10s # |
| metrics.serviceMonitor.selector | object | `{}` | Prometheus instance selector labels # ref: https://github.com/bitnami/charts/tree/master/bitnami/prometheus-operator#prometheus-configuration # selector: #   prometheus: my-prometheus # |
| nameOverride | string | `""` | String to partially override github_exporter.fullname template (will maintain the release name) |
| podAnnotations | object | `{}` | Annotations for github_exporter pods |
| podLabels | object | `{}` | Additional labels for github_exporter pods |
| podSecurityContext | object | `{}` | github_exporter pods' Security Context. |
| resources.limits | object | `{}` | The resources limits for the amazon-eks-pod-identity-webhook container # Example: # limits: #    cpu: 100m #    memory: 128Mi |
| resources.requests | object | `{}` | The requested resources for the amazon-eks-pod-identity-webhook container # Examples: # requests: #    cpu: 100m #    memory: 128Mi |
| secrets | object | `{}` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` | Pod securityContext: Enable read-only root filesystem |
| securityContext.runAsGroup | int | `1` | Pod securityContext: Run primary group id |
| securityContext.runAsNonRoot | bool | `false` | Pod securityContext: Disable root user |
| securityContext.runAsUser | int | `65534` | Pod securityContext: Run user id |
| service.annotations | object | `{}` | Service annotations |
| service.type | string | `"ClusterIP"` | Service type |
| serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. |
| serviceAccount.create | bool | `true` | Enable creation of ServiceAccount for nginx pod |
| serviceAccount.labels | object | `{}` | Labels for service account. Evaluated as a template. |
| serviceAccount.name | string | A name is generated using the `github_exporter.fullname` template | The name of the ServiceAccount to use. |
