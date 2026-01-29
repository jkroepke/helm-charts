# jkroepke helm-charts

[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/jkroepke)](https://artifacthub.io/packages/search?repo=jkroepke)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Chart Publish](https://github.com/jkroepke/helm-charts/actions/workflows/release.yaml/badge.svg)](https://github.com/jkroepke/helm-charts/actions/workflows/release.yaml)

This repo is a collection of charts for my personal homelab projects. The charts can be added using following command:

```shell
helm repo add jkroepke https://jkroepke.github.io/helm-charts/
```

**OCI artifacts of all Helm charts are available in [ghcr.io](https://github.com/jkroepke?tab=packages&repo_name=helm-charts).**

## Helm Provenance and Integrity

All charts in this repository are signed. More information about how to verify charts can be found in the official [Helm documentation](https://helm.sh/docs/topics/provenance/).

A local running gpg agent is mandatory.

To import the signing key for this repository, please run the following command:

```console
curl https://jkroepke.github.io/helm-charts/pubkey.gpg | gpg --import
```

After importing the key, you can use the `--verify` flag during `helm install` to enable chart signature validation.

## Contributing

We'd love to have you contribute! Please refer to our [contribution guidelines](CONTRIBUTING.md) for details.
