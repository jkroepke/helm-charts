# keycloak-config-cli

![Version: 1.2.1](https://img.shields.io/badge/Version-1.2.1-informational?style=flat-square) ![AppVersion: 5.0.0](https://img.shields.io/badge/AppVersion-5.0.0-informational?style=flat-square)

Import JSON-formatted configuration files into Keycloak - Configuration as Code for Keycloak.

**Homepage:** <https://github.com/adorsys/keycloak-config-cli>

## Installation

```shell
helm repo add jkroepke https://jkroepke.github.io/helm-charts/
$ helm install keycloak-config-cli jkroepke/keycloak-config-cli
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jkroepke | github@jkroepke.de | https://github.com/jkroepke |

## Source Code

* <https://github.com/adorsys/keycloak-config-cli>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| annotations."helm.sh/hook" | string | `"post-install,post-upgrade,post-rollback"` |  |
| annotations."helm.sh/hook-delete-policy" | string | `"hook-succeeded,before-hook-creation"` |  |
| annotations."helm.sh/hook-weight" | string | `"5"` |  |
| backoffLimit | int | `1` |  |
| config | object | `{}` |  |
| containerSecurityContext | object | `{}` |  |
| env.IMPORT_FILES_LOCATIONS | string | `"/config/"` |  |
| env.KEYCLOAK_URL | string | `"http://keycloak:8080"` |  |
| env.KEYCLOAK_USER | string | `"admin"` |  |
| existingConfigSecret | string | `""` |  |
| existingSecret | string | `""` |  |
| existingSecretKey | string | `"password"` |  |
| extraVolumeMounts | string | `""` |  |
| extraVolumes | string | `""` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.repository | string | `"quay.io/adorsys/keycloak-config-cli"` |  |
| image.tag | string | `"{{ .Chart.AppVersion }}-17.0.1"` |  |
| labels | object | `{}` |  |
| nameOverride | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| resources | object | `{}` |  |
| secrets | object | `{}` |  |
| securityContext | object | `{}` |  |
| serviceAccount | string | `""` |  |
