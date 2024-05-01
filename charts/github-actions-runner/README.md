# github-runner-agent

![Version: 1.1.1](https://img.shields.io/badge/Version-1.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart to deploy github runner for Kubernetes.

**Homepage:** <https://github.com/jkroepke/helm-charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Jan-Otto Kröpke |  | <https://github.com/jkroepke> |

## Source Code

* <https://github.com/myoung34/docker-github>
* <https://github.com/jkroepke/helm-charts>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| cronjob.enabled | bool | `true` |  |
| cronjob.image.imageName | string | `"bitnami/kubectl"` |  |
| cronjob.image.pullPolicy | string | `"Always"` |  |
| cronjob.image.repository | string | `"docker.io"` |  |
| cronjob.image.tag | string | `"latest"` | Overrides the image tag whose default is the chart appVersion. |
| cronjob.schedule | string | `"0 0 * * 0"` |  |
| env.CONFIGURED_ACTIONS_RUNNER_FILES_DIR | string | `"/data"` | Path to use for runner data. It allows avoiding reregistration each the start of the runner. No default value. |
| env.DISABLE_AUTOMATIC_DEREGISTRATION | string | `"true"` | Optional flag to disable signal catching for deregistration. Default is false. Any value other than exactly false is considered true. |
| env.DISABLE_AUTO_UPDATE | string | `"false"` | Optional environment variable to disable auto updates. Auto updates are enabled by default to preserve past behavior. Any value is considered truthy and will disable them. |
| env.ENTERPRISE_NAME | string | `""` | The enterprise name for the runner to register under. Requires RUNNER_SCOPE to be 'enterprise'. No default value. |
| env.GITHUB_HOST | string | `""` | Optional URL of the GitHub Enterprise server e.g github.mycompany.com. Defaults to github.com. |
| env.LABELS | string | `"self-hosted"` | A comma-separated string to indicate the labels. Default is 'default' |
| env.NO_DEFAULT_LABELS | string | `"false"` | Optional environment variable to disable adding the default self-hosted, platform, and architecture labels to the runner. Any value is considered truthy and will disable them. |
| env.ORG_NAME | string | `""` | The organization name for the runner to register under. Requires RUNNER_SCOPE to be 'org'. No default value. |
| env.REPO_URL | string | `""` | If using a non-organization runner this is the full repository url to register under such as 'https://github.com/myoung34/repo' |
| env.RUNNER_GRACEFUL_STOP_TIMEOUT | string | `"590"` | Seconds to wait for the runner to shut down gracefully |
| env.RUNNER_GROUP | string | `""` | Name of the runner group to add this runner to (defaults to the default runner group) |
| env.RUNNER_NAME | string | `"self-hosted-github-runner"` | The name of the runner to use. Supercedes (overrides) RUNNER_NAME_PREFIX |
| env.RUNNER_SCOPE | string | `"repo"` | The scope the runner will be registered on. Valid values are repo, org and ent. For 'org' and 'enterprise', ACCESS_TOKEN is required and REPO_URL is unnecessary. If 'org', requires ORG_NAME; if 'enterprise', requires ENTERPRISE_NAME. Default is 'repo'. |
| env.RUNNER_WORKDIR | string | `"/_work"` | The working directory for the runner. Runners on the same host should not share this directory. Default is '/_work'. This must match the source path for the bind-mounted volume at RUNNER_WORKDIR, in order for container actions to access files. |
| env.RUN_AS_ROOT | bool | `false` | Boolean to run as root. If true: will run as root. If True and the user is overridden it will error. If any other value it will run as the runner user and allow an optional override. Default is true |
| env.START_DOCKER_SERVICE | string | `"false"` | Optional flag which automatically starts the docker service if set to true. Useful when using sysbox. Defaults to false. |
| fullnameOverride | string | `""` |  |
| image.imageName | string | `"myoung34/github-runner"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"docker.io"` |  |
| image.tag | string | `"latest"` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| livenessProbe | object | `{}` | LivenessProbes |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` | Labels for selecting the node. |
| persistentVolume | object | `{"enabled":true,"size":"1Gi","storageClassName":""}` | Persistent Volume for data directory in github runner in order to utilise the RUNNER_TOKEN for unlimited time. |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `1` |  |
| readinessProbe | object | `{}` | ReadinessProbes |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secrets.ACCESS_TOKEN | string | `""` | A github PAT to use to generate RUNNER_TOKEN dynamically at container start. Not using this requires a valid RUNNER_TOKEN. |
| secrets.RUNNER_TOKEN | string | `""` | If not using a PAT for ACCESS_TOKEN this will be the runner token provided by the Add Runner UI (a manual process). Note: This token is short lived and will change frequently. ACCESS_TOKEN is likely preferred. |
| securityContext.runAsGroup | int | `1` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1001` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| serviceAccount.roleName | string | `"cluster-admin"` | If not set and create is true, will use the cluster-admin role. |
| terminationGracePeriodSeconds | int | `600` |  |
| tolerations | list | `[]` |  |

