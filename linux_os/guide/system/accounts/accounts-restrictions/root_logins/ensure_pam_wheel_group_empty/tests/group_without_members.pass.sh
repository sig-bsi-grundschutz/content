#!/bin/bash
# variables = var_pam_wheel_group_for_su=sugroup

GRP_NAME=sugroup
groupadd ${GRP_NAME}
groupmems -g ${GRP_NAME} -p