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
                    "k8s.ovn.org/node-chasskubernetes.io/hostnameis-id": "aa52d871-d0a8-46ee-a9be-913fd34f7692",
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
                    "node.openshift.io/os_id": "rhcos",
                    "topology.kubernetes.io/region": "eu-central-1",
                    "topology.kubernetes.io/zone": "eu-central-1b"
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
                    "node.openshift.io/os_id": "rhcos",
                    "topology.kubernetes.io/region": "eu-central-1",
                    "topology.kubernetes.io/zone": "eu-central-1a"
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
                    "node.openshift.io/os_id": "rhcos",
                    "topology.kubernetes.io/region": "eu-central-1",
                    "topology.kubernetes.io/zone": "eu-central-1c"
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
        },
        {
            "apiVersion": "v1",
            "kind": "Node",
            "metadata": {
                "annotations": {
                    "k8s.ovn.org/host-addresses": "[\"172.10.57.11\"]",
                    "k8s.ovn.org/l3-gateway-config": "{\"default\":{\"mode\":\"shared\",\"interface-id\":\"br-ex_ocp-worker1.domain.local\",\"ip-addresses\":[\"172.10.57.11/24\"],\"ip-address\":\"172.10.57.11/24\",\"next-hops\":[\"172.10.57.1\"],\"next-hop\":\"172.10.57.1\",\"node-port-enable\":\"true\",\"vlan-id\":\"0\"}}",
                    "k8s.ovn.org/node-chassis-id": "0777559e-2621-4da6-8d59-cc195de68507",
                    "k8s.ovn.org/node-gateway-router-lrp-ifaddr": "{\"ipv4\":\"100.64.0.4/16\"}",
                    "k8s.ovn.org/node-local-nat-ip": "{\"default\":[\"169.254.6.62\"]}",
                    "k8s.ovn.org/node-primary-ifaddr": "{\"ipv4\":\"172.10.57.11/24\"}",
                    "k8s.ovn.org/node-subnets": "{\"default\":\"10.128.10.0/23\"}",
                    "machineconfiguration.openshift.io/controlPlaneTopology": "HighlyAvailable",
                    "machineconfiguration.openshift.io/currentConfig": "rendered-worker-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredConfig": "rendered-worker-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredDrain": "uncordon-rendered-worker-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/lastAppliedDrain": "uncordon-rendered-worker-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/reason": "",
                    "machineconfiguration.openshift.io/ssh": "accessed",
                    "machineconfiguration.openshift.io/state": "Done",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2023-01-04T14:48:16Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/os": "linux",
                    "kubernetes.io/arch": "amd64",
                    "kubernetes.io/hostname": "ocp-worker1.domain.local",
                    "kubernetes.io/os": "linux",
                    "node-role.kubernetes.io/infra": "",
                    "node-role.kubernetes.io/worker": "",
                    "node.openshift.io/os_id": "rhcos",
                    "topology.kubernetes.io/region": "eu-central-1",
                    "topology.kubernetes.io/zone": "eu-central-1a"
                },
                "name": "ocp-worker1.domain.local",
                "resourceVersion": "1192122216",
                "uid": "1667ec5a-ca3d-4994-88bd-27da3644e338"
            },
            "spec": {
                "podCIDR": "10.128.5.0/24",
                "podCIDRs": [
                    "10.128.5.0/24"
                ],
                "taints": [
                    {
                        "effect": "NoSchedule",
                        "key": "node-role.kubernetes.io/infra"
                    }
                ]
            },
            "status": {
                "addresses": [
                    {
                        "address": "172.10.57.11",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ocp-worker1.domain.local",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "5500m",
                    "ephemeral-storage": "114381692328",
                    "hugepages-2Mi": "0",
                    "memory": "19381080Ki",
                    "pods": "250"
                },
                "capacity": {
                    "cpu": "6",
                    "ephemeral-storage": "125277164Ki",
                    "hugepages-2Mi": "0",
                    "memory": "20532056Ki",
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
                    "k8s.ovn.org/host-addresses": "[\"172.10.57.12\"]",
                    "k8s.ovn.org/l3-gateway-config": "{\"default\":{\"mode\":\"shared\",\"interface-id\":\"br-ex_ocp-worker2.domain.local\",\"ip-addresses\":[\"172.10.57.12/24\"],\"ip-address\":\"172.10.57.12/24\",\"next-hops\":[\"172.10.57.1\"],\"next-hop\":\"172.10.57.1\",\"node-port-enable\":\"true\",\"vlan-id\":\"0\"}}",
                    "k8s.ovn.org/node-chassis-id": "88f61c26-848b-41d9-a200-e393ba709895",
                    "k8s.ovn.org/node-gateway-router-lrp-ifaddr": "{\"ipv4\":\"100.64.0.5/16\"}",
                    "k8s.ovn.org/node-local-nat-ip": "{\"default\":[\"169.254.4.62\"]}",
                    "k8s.ovn.org/node-primary-ifaddr": "{\"ipv4\":\"172.10.57.12/24\"}",
                    "k8s.ovn.org/node-subnets": "{\"default\":\"10.128.8.0/23\"}",
                    "machineconfiguration.openshift.io/controlPlaneTopology": "HighlyAvailable",
                    "machineconfiguration.openshift.io/currentConfig": "rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredConfig": "rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredDrain": "uncordon-rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/lastAppliedDrain": "uncordon-rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/reason": "",
                    "machineconfiguration.openshift.io/state": "Done",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2023-01-04T14:48:12Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/os": "linux",
                    "cluster.ocs.openshift.io/openshift-storage": "",
                    "kubernetes.io/arch": "amd64",
                    "kubernetes.io/hostname": "ocp-worker2.domain.local",
                    "kubernetes.io/os": "linux",
                    "node-role.kubernetes.io/infra": "",
                    "node-role.kubernetes.io/worker": "",
                    "node.openshift.io/os_id": "rhcos",
                    "topology.kubernetes.io/region": "eu-central-1",
                    "topology.kubernetes.io/zone": "eu-central-1a"
                },
                "name": "ocp-worker2.domain.local",
                "resourceVersion": "1192122353",
                "uid": "bd56f83c-e625-4365-a838-47fa496b7d93"
            },
            "spec": {
                "podCIDR": "10.128.4.0/24",
                "podCIDRs": [
                    "10.128.4.0/24"
                ],
                "taints": [
                    {
                        "effect": "NoSchedule",
                        "key": "node-role.kubernetes.io/infra"
                    }
                ]
            },
            "status": {
                "addresses": [
                    {
                        "address": "172.10.57.12",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ocp-worker2.domain.local",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "5500m",
                    "ephemeral-storage": "114381692328",
                    "hugepages-2Mi": "0",
                    "memory": "19381080Ki",
                    "pods": "250"
                },
                "capacity": {
                    "cpu": "6",
                    "ephemeral-storage": "125277164Ki",
                    "hugepages-2Mi": "0",
                    "memory": "20532056Ki",
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
                    "k8s.ovn.org/host-addresses": "[\"172.10.57.13\"]",
                    "k8s.ovn.org/l3-gateway-config": "{\"default\":{\"mode\":\"shared\",\"interface-id\":\"br-ex_ocp-worker3.domain.local\",\"ip-addresses\":[\"172.10.57.13/24\"],\"ip-address\":\"172.10.57.13/24\",\"next-hops\":[\"172.10.57.1\"],\"next-hop\":\"172.10.57.1\",\"node-port-enable\":\"true\",\"vlan-id\":\"0\"}}",
                    "k8s.ovn.org/node-chassis-id": "5a10fb7b-89d4-4510-8389-0578093eddb1",
                    "k8s.ovn.org/node-gateway-router-lrp-ifaddr": "{\"ipv4\":\"100.64.0.6/16\"}",
                    "k8s.ovn.org/node-local-nat-ip": "{\"default\":[\"169.254.8.180\"]}",
                    "k8s.ovn.org/node-primary-ifaddr": "{\"ipv4\":\"172.10.57.13/24\"}",
                    "k8s.ovn.org/node-subnets": "{\"default\":\"10.128.6.0/23\"}",
                    "machineconfiguration.openshift.io/controlPlaneTopology": "HighlyAvailable",
                    "machineconfiguration.openshift.io/currentConfig": "rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredConfig": "rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredDrain": "uncordon-rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/lastAppliedDrain": "uncordon-rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/reason": "",
                    "machineconfiguration.openshift.io/state": "Done",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2023-01-04T14:47:56Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/os": "linux",
                    "cluster.ocs.openshift.io/openshift-storage": "",
                    "kubernetes.io/arch": "amd64",
                    "kubernetes.io/hostname": "ocp-worker3.domain.local",
                    "kubernetes.io/os": "linux",
                    "node-role.kubernetes.io/infra": "",
                    "node-role.kubernetes.io/worker": "",
                    "node.openshift.io/os_id": "rhcos",
                    "topology.kubernetes.io/region": "eu-central-1",
                    "topology.kubernetes.io/zone": "eu-central-1a"
                },
                "name": "ocp-worker3.domain.local",
                "resourceVersion": "1192119492",
                "uid": "65395ca7-8181-4a0b-95cf-128922f105f5"
            },
            "spec": {
                "podCIDR": "10.128.3.0/24",
                "podCIDRs": [
                    "10.128.3.0/24"
                ],
                "taints": [
                    {
                        "effect": "NoSchedule",
                        "key": "node-role.kubernetes.io/infra"
                    }
                ]
            },
            "status": {
                "addresses": [
                    {
                        "address": "172.10.57.13",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ocp-worker3.domain.local",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "5500m",
                    "ephemeral-storage": "114381692328",
                    "hugepages-2Mi": "0",
                    "memory": "19381096Ki",
                    "pods": "250"
                },
                "capacity": {
                    "cpu": "6",
                    "ephemeral-storage": "125277164Ki",
                    "hugepages-2Mi": "0",
                    "memory": "20532072Ki",
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
                    "k8s.ovn.org/host-addresses": "[\"172.10.57.15\"]",
                    "k8s.ovn.org/l3-gateway-config": "{\"default\":{\"mode\":\"shared\",\"interface-id\":\"br-ex_ocp-worker4.domain.local\",\"ip-addresses\":[\"172.10.57.15/24\"],\"ip-address\":\"172.10.57.15/24\",\"next-hops\":[\"172.10.57.1\"],\"next-hop\":\"172.10.57.1\",\"node-port-enable\":\"true\",\"vlan-id\":\"0\"}}",
                    "k8s.ovn.org/node-chassis-id": "6877fce2-e6aa-43ae-817d-ed85e451a463",
                    "k8s.ovn.org/node-gateway-router-lrp-ifaddr": "{\"ipv4\":\"100.64.0.7/16\"}",
                    "k8s.ovn.org/node-local-nat-ip": "{\"default\":[\"169.254.5.179\"]}",
                    "k8s.ovn.org/node-primary-ifaddr": "{\"ipv4\":\"172.10.57.15/24\"}",
                    "k8s.ovn.org/node-subnets": "{\"default\":\"10.128.12.0/23\"}",
                    "machineconfiguration.openshift.io/controlPlaneTopology": "HighlyAvailable",
                    "machineconfiguration.openshift.io/currentConfig": "rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredConfig": "rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/desiredDrain": "uncordon-rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/lastAppliedDrain": "uncordon-rendered-infra-2bc1dcecc35503442d9102830613c52b",
                    "machineconfiguration.openshift.io/reason": "",
                    "machineconfiguration.openshift.io/state": "Done",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2023-01-14T07:25:59Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/os": "linux",
                    "cluster.ocs.openshift.io/openshift-storage": "",
                    "kubernetes.io/arch": "amd64",
                    "kubernetes.io/hostname": "ocp-worker4.domain.local",
                    "kubernetes.io/os": "linux",
                    "node-role.kubernetes.io/worker": "",
                    "node.openshift.io/os_id": "rhcos"
                },
                "name": "ocp-worker4.domain.local",
                "resourceVersion": "1192119420",
                "uid": "6e993021-17e9-4945-9c46-65e60c90c65a"
            },
            "spec": {},
            "status": {
                "addresses": [
                    {
                        "address": "172.10.57.15",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ocp-worker4.domain.local",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "5500m",
                    "ephemeral-storage": "114381692328",
                    "hugepages-2Mi": "0",
                    "memory": "19381080Ki",
                    "pods": "250"
                },
                "capacity": {
                    "cpu": "6",
                    "ephemeral-storage": "125277164Ki",
                    "hugepages-2Mi": "0",
                    "memory": "20532056Ki",
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

jq_filter='.items | map(select(.metadata.labels["node-role.kubernetes.io/infra"] == "") | .metadata.labels["topology.kubernetes.io/zone"]) | unique | length'

# Get file path. This will actually be read by the scan
filteredpath="$kube_apipath$nodes_apipath#$(echo -n "$nodes_apipath$jq_filter" | sha256sum | awk '{print $1}')"

# populate filtered path with jq-filtered result
jq "$jq_filter" "$kube_apipath$nodes_apipath" > "$filteredpath"
