# amazon-eks-pod-identity-webhook

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.4.0](https://img.shields.io/badge/AppVersion-v0.4.0-informational?style=flat-square)

A Kubernetes webhook for pods that need AWS IAM access

**Homepage:** <https://github.com/aws/amazon-eks-pod-identity-webhook/>

## Installation

```shell
helm repo add jkroepke https://jkroepke.github.io/helm-charts/
helm install amazon-eks-pod-identity-webhook jkroepke/amazon-eks-pod-identity-webhook
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jkroepke | <github@jkroepke.de> | <https://github.com/jkroepke> |

## Source Code

* <https://github.com/jkroepke/helm-charts/tree/main/charts/amazon-eks-pod-identity-webhook>
* <https://github.com/aws/amazon-eks-pod-identity-webhook/>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| annotations | object | `{}` | Annotations for amazon-eks-pod-identity-webhook deployment |
| config.annotationPrefix | string | `"eks.amazonaws.com"` | The Service Account annotation to look for (default "eks.amazonaws.com") |
| config.defaultAwsRegion | string | `"us-east-1"` | If set, AWS_DEFAULT_REGION and AWS_REGION will be set to this value in mutated containers |
| config.extraArgs | list | `[]` | Additional command line arguments to pass to amazon-eks-pod-identity-webhook |
| config.podIdentityWebhookMap.data | object | `{}` | Content of pod-identity-webhook configmap |
| config.podIdentityWebhookMap.enabled | bool | `false` | Enabled pod-identity-webhook ConfigMap. See https://github.com/aws/amazon-eks-pod-identity-webhook#pod-identity-webhook-configmap |
| config.podIdentityWebhookMap.name | string | `"pod-identity-webhook"` | Name pod-identity-webhook ConfigMap. Changing this value is not supported. |
| config.ports.metrics | int | `9999` | Port to listen on for metrics and healthz (http) |
| config.ports.webhook | int | `8443` | Port to listen on |
| config.stsRegionalEndpoint | bool | `true` | Whether to inject the AWS_STS_REGIONAL_ENDPOINTS=regional env var in mutated pods. |
| config.tokenAudience | string | `"sts.amazonaws.com"` | The default audience for tokens. Can be overridden by annotation |
| config.tokenExpiration | int | `86400` | The token expiration |
| config.tokenMountPath | string | `"/var/run/secrets/eks.amazonaws.com/serviceaccount"` | The path to mount tokens |
| fullnameOverride | string | `""` | String to fully override amazon-eks-pod-identity.fullname template |
| hostNetwork | bool | `false` | Specify if host network should be enabled for amazon-eks-pod-identity-webhook pod |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` | amazon-eks-pod-identity-webhook image registry |
| image.repository | string | `"amazon/amazon-eks-pod-identity-webhook"` | amazon-eks-pod-identity-webhook image repository |
| image.tag | string | `.Chart.AppVersion` | amazon-eks-pod-identity-webhook image tag (immutable tags are recommended). |
| imagePullSecrets | list | `[]` | registry secret names as an array |
| livenessProbe.httpGet.path | string | `"/healthz"` | This is the liveness check endpoint |
| livenessProbe.httpGet.port | string | `"metrics"` |  |
| metrics.podMonitor.additionalLabels | object | `{}` | Used to pass Labels that are required by the installed Prometheus Operator |
| metrics.podMonitor.enabled | bool | `false` | Create PodMonitor Resource for scraping metrics using PrometheusOperator |
| metrics.podMonitor.honorLabels | bool | `false` | honorLabels chooses the metric's labels on collisions with target labels |
| metrics.podMonitor.interval | string | `"30s"` | Specify the interval at which metrics should be scraped |
| metrics.podMonitor.namespace | string | `""` | Specify the namespace in which the podMonitor resource will be created |
| metrics.podMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping. |
| metrics.podMonitor.scrapeTimeout | string | `""` | Specify the timeout after which the scrape is ended |
| mutatingWebhook.annotations | object | `{}` | Annotations for amazon-eks-pod-identity-webhook mutating webhook |
| mutatingWebhook.failurePolicy | string | `"Ignore"` | FailurePolicy of the amazon-eks-pod-identity-webhook mutating webhook. Fail or Ignore are allowed. |
| mutatingWebhook.namespaceSelector | object | `{}` | namespaceSelector for the mutating webhook to include or exclude namespace. |
| nameOverride | string | `""` | String to partially override amazon-eks-pod-identity-webhook.fullname template (will maintain the release name) |
| namespaceOverride | string | `""` | String to partially override amazon-eks-pod-identity-webhook.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment. Evaluated as a template. |
| pki.caBundle | string | `""` | ca bundle of the manual generated server tls key |
| pki.cert | string | `""` | manual generated server tls cert. Used if pki.certManager.enabled is false |
| pki.certManager.certificate.duration | string | `"2160h"` | lifetime of the generated server certificate. 2160h=90d |
| pki.certManager.certificate.renewBefore | string | `"360h"` | renew time before server certificate expires. 360h=15d |
| pki.certManager.enabled | bool | `true` | use cert-manager to generate the webhook server certificates |
| pki.certManager.existingIssuer.enabled | bool | `false` | Use an existing cert-manager issuer. |
| pki.certManager.existingIssuer.kind | string | `"ClusterIssuer"` | Kind of the existing cert-manager issuer. |
| pki.certManager.existingIssuer.name | string | `"selfsigned"` | Name of the existing cert-manager issuer. |
| pki.existingSecret | string | `""` | name of the external secret (type kubernetes.io/tls). Used if pki.certManager.enabled is false |
| pki.key | string | `""` | manual generated server tls key. Used if pki.certManager.enabled is false |
| podAnnotations | object | `{}` | Annotations for amazon-eks-pod-identity-webhook pods |
| podLabels | object | `{}` | Additional labels for amazon-eks-pod-identity-webhook pods |
| podSecurityContext | object | `{}` | amazon-eks-pod-identity-webhook pods' Security Context. |
| readinessProbe.httpGet.path | string | `"/healthz"` | This is the readiness check endpoint |
| readinessProbe.httpGet.port | string | `"metrics"` |  |
| replicaCount | int | `1` | Number of amazon-eks-pod-identity-webhook replicas to deploy |
| resources.limits | object | `{}` | The resources limits for the amazon-eks-pod-identity-webhook container |
| resources.requests | object | `{}` | The requested resources for the amazon-eks-pod-identity-webhook container |
| securityContext.readOnlyRootFilesystem | bool | `true` | Pod securityContext: Enable read-only root filesystem |
| securityContext.runAsGroup | int | `1` | Pod securityContext: Run primary group id |
| securityContext.runAsNonRoot | bool | `false` | Pod securityContext: Disable root user |
| securityContext.runAsUser | int | `65534` | Pod securityContext: Run user id |
| service.annotations | object | `{}` | Service annotations |
| service.type | string | `"ClusterIP"` | Service type |
| serviceAccount.annotations | object | `{}` | Annotations for service account. Evaluated as a template. |
| serviceAccount.create | bool | `true` | Enable creation of ServiceAccount for nginx pod |
| serviceAccount.name | string | A name is generated using the `amazon-eks-pod-identity-webhook.fullname` template | The name of the ServiceAccount to use. |
| tolerations | list | `[]` | Tolerations for pod assignment. Evaluated as a template. |
