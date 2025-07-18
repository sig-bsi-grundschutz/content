---
documentation_complete: true

metadata:
    version: 2.0.0
    SMEs:
        - marcusburghardt
        - mab879
        - vojtapolasek

reference: https://www.cisecurity.org/benchmark/red_hat_linux/

title: 'CIS Red Hat Enterprise Linux 9 Benchmark for Level 2 - Workstation'

description: |-
    This profile defines a baseline that aligns to the "Level 2 - Workstation"
    configuration from the Center for Internet Security® Red Hat Enterprise
    Linux 9 Benchmark™, v2.0.0, released 2024-06-20.

    This profile includes Center for Internet Security®
    Red Hat Enterprise Linux 9 CIS Benchmarks™ content.

selections:
    - cis_rhel9:all:l2_workstation
    # Following rules once had a prodtype incompatible with the rhel9 product
    - '!file_ownership_home_directories'
    - '!group_unique_name'
    - '!file_owner_at_allow'
