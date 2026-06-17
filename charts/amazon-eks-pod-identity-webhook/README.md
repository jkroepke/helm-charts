# amazon-eks-pod-identity-webhook

A Kubernetes webhook for pods that need AWS IAM access

**Homepage:** <https://github.com/aws/amazon-eks-pod-identity-webhook/>

## Installing the Chart

### OCI Registry

OCI registries are preferred in Helm as they implement unified storage, distribution, and improved security.

```console
helm install RELEASE-NAME oci://ghcr.io/jkroepke/helm-charts/amazon-eks-pod-identity-webhook
```

### HTTP Registry

```console
helm repo add jkroepke https://jkroepke.github.io/helm-charts
helm repo update
helm install RELEASE-NAME jkroepke/amazon-eks-pod-identity-webhook
```

## Uninstalling the Chart

To remove all of the Kubernetes objects associated with the Helm chart release:

```console
helm delete RELEASE-NAME
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jkroepke | <github@jkroepke.de> | <https://github.com/jkroepke> |

## Source Code

* <https://github.com/jkroepke/helm-charts/tree/main/charts/amazon-eks-pod-identity-webhook>
* <https://github.com/aws/amazon-eks-pod-identity-webhook/>

## Changelog

See the [changelog](https://jkroepke.github.io/helm-charts/changelog/?chart=amazon-eks-pod-identity-webhook).

## Values


See the [values docs](https://jkroepke.github.io/helm-charts/docs/?chart=amazon-eks-pod-identity-webhook).
