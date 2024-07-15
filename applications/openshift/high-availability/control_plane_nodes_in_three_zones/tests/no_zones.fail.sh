#!/bin/bash
# remediation = none
# packages = jq

kube_apipath="/kubernetes-api-resources"
mkdir -p "$kube_apipath/api/v1"
nodes_apipath="/api/v1/nodes"

cat <<EOF > "$kube_apipath$nodes_apipath"
{
    "apiVersion": "v1",
    "items": [
        {
            "apiVersion": "v1",
            "kind": "Node",
            "metadata": {
                "annotations": {
                    "k8s.ovn.org/host-addresses": "[\"172.10.57.6\"]",
                    "k8s.ovn.org/l3-gateway-config": "{\"default\":{\"mode\":\"shared\",\"interface-id\":\"br-ex_ocp-control1.domain.local\",\"ip-addresses\":[\"172.10.57.6/24\"],\"ip-address\":\"172.10.57.6/24\",\"next-hops\":[\"172.10.57.1\"],\"next-hop\":\"172.10.57.1\",\"node-port-enable\":\"true\",\"vlan-id\":\"0\"}}",
                    "k8s.ovn.org/node-chassis-id": "aa52d871-d0a8-46ee-a9be-913fd34f7692",
                    "k8s.ovn.org/node-gateway-router-lrp-ifaddr": "{\"ipv4\":\"100.64.0.8/16\"}",
                    "k8s.ovn.org/node-local-nat-ip": "{\"default\":[\"169.254.5.9\"]}",
                    "k8s.ovn.org/node-primary-ifaddr": "{\"ipv4\":\"172.10.57.6/24\"}",
                    "k8s.ovn.org/node-subnets": "{\"default\":\"10.128.0.0/23\"}",
                    "machineconfiguration.openshift.io/controlPlaneTopology": "HighlyAvailable",
                    "machineconfiguration.openshift.io/currentConfig": "rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/desiredConfig": "rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/desiredDrain": "uncordon-rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/lastAppliedDrain": "uncordon-rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/reason": "",
                    "machineconfiguration.openshift.io/ssh": "accessed",
                    "machineconfiguration.openshift.io/state": "Done",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2023-01-04T14:23:02Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/os": "linux",
                    "kubernetes.io/arch": "amd64",
                    "kubernetes.io/hostname": "ocp-control1.domain.local",
                    "kubernetes.io/os": "linux",
                    "node-role.kubernetes.io/master": "",
                    "node.openshift.io/os_id": "rhcos"
                },
                "name": "ocp-control1.domain.local",
                "resourceVersion": "1192119588",
                "uid": "c0aa2f3d-71ed-428d-9d11-4824f0e914da"
            },
            "spec": {
                "podCIDR": "10.128.0.0/24",
                "podCIDRs": [
                    "10.128.0.0/24"
                ],
                "taints": [
                    {
                        "effect": "NoSchedule",
                        "key": "node-role.kubernetes.io/master"
                    }
                ]
            },
            "status": {
                "addresses": [
                    {
                        "address": "172.10.57.6",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ocp-control1.domain.local",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "3500m",
                    "ephemeral-storage": "114381692328",
                    "hugepages-2Mi": "0",
                    "memory": "15252768Ki",
                    "pods": "250"
                },
                "capacity": {
                    "cpu": "4",
                    "ephemeral-storage": "125277164Ki",
                    "hugepages-2Mi": "0",
                    "memory": "16403744Ki",
                    "pods": "250"
                },
                "conditions": [],
                "daemonEndpoints": {
                    "kubeletEndpoint": {
                        "Port": 10250
                    }
                },
                "images": [],
                "nodeInfo": {
                    "architecture": "amd64",
                    "containerRuntimeVersion": "cri-o://1.25.4-4.1.rhaos4.12.gitb9319a2.el8",
                    "kernelVersion": "4.18.0-372.76.1.el8_6.x86_64",
                    "kubeProxyVersion": "v1.25.14+20cda61",
                    "kubeletVersion": "v1.25.14+20cda61",
                    "operatingSystem": "linux",
                    "osImage": "Red Hat Enterprise Linux CoreOS 412.86.202310170023-0 (Ootpa)"
                }
            }
        },
        {
            "apiVersion": "v1",
            "kind": "Node",
            "metadata": {
                "annotations": {
                    "k8s.ovn.org/host-addresses": "[\"172.10.57.7\"]",
                    "k8s.ovn.org/l3-gateway-config": "{\"default\":{\"mode\":\"shared\",\"interface-id\":\"br-ex_ocp-control2.domain.local\",\"ip-addresses\":[\"172.10.57.7/24\"],\"ip-address\":\"172.10.57.7/24\",\"next-hops\":[\"172.10.57.1\"],\"next-hop\":\"172.10.57.1\",\"node-port-enable\":\"true\",\"vlan-id\":\"0\"}}",
                    "k8s.ovn.org/node-chassis-id": "3d8ab0a6-17aa-4425-a989-e5f681672a6f",
                    "k8s.ovn.org/node-gateway-router-lrp-ifaddr": "{\"ipv4\":\"100.64.0.2/16\"}",
                    "k8s.ovn.org/node-local-nat-ip": "{\"default\":[\"169.254.13.130\"]}",
                    "k8s.ovn.org/node-primary-ifaddr": "{\"ipv4\":\"172.10.57.7/24\"}",
                    "k8s.ovn.org/node-subnets": "{\"default\":\"10.128.2.0/23\"}",
                    "machineconfiguration.openshift.io/controlPlaneTopology": "HighlyAvailable",
                    "machineconfiguration.openshift.io/currentConfig": "rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/desiredConfig": "rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/desiredDrain": "uncordon-rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/lastAppliedDrain": "uncordon-rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/reason": "",
                    "machineconfiguration.openshift.io/ssh": "accessed",
                    "machineconfiguration.openshift.io/state": "Done",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2023-01-04T14:24:11Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/os": "linux",
                    "kubernetes.io/arch": "amd64",
                    "kubernetes.io/hostname": "ocp-control2.domain.local",
                    "kubernetes.io/os": "linux",
                    "node-role.kubernetes.io/master": "",
                    "node.openshift.io/os_id": "rhcos"
                },
                "name": "ocp-control2.domain.local",
                "resourceVersion": "1192119593",
                "uid": "33735f94-a745-4d7d-8707-73df67cbc8e1"
            },
            "spec": {
                "podCIDR": "10.128.1.0/24",
                "podCIDRs": [
                    "10.128.1.0/24"
                ],
                "taints": [
                    {
                        "effect": "NoSchedule",
                        "key": "node-role.kubernetes.io/master"
                    }
                ]
            },
            "status": {
                "addresses": [
                    {
                        "address": "172.10.57.7",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ocp-control2.domain.local",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "3500m",
                    "ephemeral-storage": "114381692328",
                    "hugepages-1Gi": "0",
                    "hugepages-2Mi": "0",
                    "memory": "15252816Ki",
                    "pods": "250"
                },
                "capacity": {
                    "cpu": "4",
                    "ephemeral-storage": "125277164Ki",
                    "hugepages-1Gi": "0",
                    "hugepages-2Mi": "0",
                    "memory": "16403792Ki",
                    "pods": "250"
                },
                "conditions": [],
                "daemonEndpoints": {
                    "kubeletEndpoint": {
                        "Port": 10250
                    }
                },
                "images": [],
                "nodeInfo": {
                    "architecture": "amd64",
                    "containerRuntimeVersion": "cri-o://1.25.4-4.1.rhaos4.12.gitb9319a2.el8",
                    "kernelVersion": "4.18.0-372.76.1.el8_6.x86_64",
                    "kubeProxyVersion": "v1.25.14+20cda61",
                    "kubeletVersion": "v1.25.14+20cda61",
                    "operatingSystem": "linux",
                    "osImage": "Red Hat Enterprise Linux CoreOS 412.86.202310170023-0 (Ootpa)"
                }
            }
        },
        {
            "apiVersion": "v1",
            "kind": "Node",
            "metadata": {
                "annotations": {
                    "k8s.ovn.org/host-addresses": "[\"172.10.57.8\"]",
                    "k8s.ovn.org/l3-gateway-config": "{\"default\":{\"mode\":\"shared\",\"interface-id\":\"br-ex_ocp-control3.domain.local\",\"ip-addresses\":[\"172.10.57.8/24\"],\"ip-address\":\"172.10.57.8/24\",\"next-hops\":[\"172.10.57.1\"],\"next-hop\":\"172.10.57.1\",\"node-port-enable\":\"true\",\"vlan-id\":\"0\"}}",
                    "k8s.ovn.org/node-chassis-id": "33908c13-7c84-44a8-a1ec-bcc0c7b9a363",
                    "k8s.ovn.org/node-gateway-router-lrp-ifaddr": "{\"ipv4\":\"100.64.0.3/16\"}",
                    "k8s.ovn.org/node-local-nat-ip": "{\"default\":[\"169.254.9.205\"]}",
                    "k8s.ovn.org/node-primary-ifaddr": "{\"ipv4\":\"172.10.57.8/24\"}",
                    "k8s.ovn.org/node-subnets": "{\"default\":\"10.128.4.0/23\"}",
                    "machineconfiguration.openshift.io/controlPlaneTopology": "HighlyAvailable",
                    "machineconfiguration.openshift.io/currentConfig": "rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/desiredConfig": "rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/desiredDrain": "uncordon-rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/lastAppliedDrain": "uncordon-rendered-master-d0a23f1409780adbe3913473e3e42154",
                    "machineconfiguration.openshift.io/reason": "",
                    "machineconfiguration.openshift.io/state": "Done",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2023-01-04T14:25:24Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/os": "linux",
                    "kubernetes.io/arch": "amd64",
                    "kubernetes.io/hostname": "ocp-control3.domain.local",
                    "kubernetes.io/os": "linux",
                    "node-role.kubernetes.io/master": "",
                    "node.openshift.io/os_id": "rhcos"
                },
                "name": "ocp-control3.domain.local",
                "resourceVersion": "1192117923",
                "uid": "ffd0364a-b48d-4b53-bb69-47568e6511b5"
            },
            "spec": {
                "podCIDR": "10.128.2.0/24",
                "podCIDRs": [
                    "10.128.2.0/24"
                ],
                "taints": [
                    {
                        "effect": "NoSchedule",
                        "key": "node-role.kubernetes.io/master"
                    }
                ]
            },
            "status": {
                "addresses": [
                    {
                        "address": "172.10.57.8",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ocp-control3.domain.local",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "3500m",
                    "ephemeral-storage": "114381692328",
                    "hugepages-2Mi": "0",
                    "memory": "15252768Ki",
                    "pods": "250"
                },
                "capacity": {
                    "cpu": "4",
                    "ephemeral-storage": "125277164Ki",
                    "hugepages-2Mi": "0",
                    "memory": "16403744Ki",
                    "pods": "250"
                },
                "conditions": [],
                "daemonEndpoints": {
                    "kubeletEndpoint": {
                        "Port": 10250
                    }
                },
                "images": [],
                "nodeInfo": {
                    "architecture": "amd64",
                    "containerRuntimeVersion": "cri-o://1.25.4-4.1.rhaos4.12.gitb9319a2.el8",
                    "kernelVersion": "4.18.0-372.76.1.el8_6.x86_64",
                    "kubeProxyVersion": "v1.25.14+20cda61",
                    "kubeletVersion": "v1.25.14+20cda61",
                    "operatingSystem": "linux",
                    "osImage": "Red Hat Enterprise Linux CoreOS 412.86.202310170023-0 (Ootpa)"
                }
            }
        }
    ],
    "kind": "List",
    "metadata": {
        "resourceVersion": ""
    }
}
EOF

jq_filter='.items | map(select(.metadata.labels["node-role.kubernetes.io/master"] == "") | .metadata.labels["topology.kubernetes.io/zone"]) | unique | length'

# Get file path. This will actually be read by the scan
filteredpath="$kube_apipath$nodes_apipath#$(echo -n "$nodes_apipath$jq_filter" | sha256sum | awk '{print $1}')"

# populate filtered path with jq-filtered result
jq "$jq_filter" "$kube_apipath$nodes_apipath" > "$filteredpath"
