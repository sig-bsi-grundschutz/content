#!/bin/bash

for interface in $(ip -o link show | grep -i promisc | sed 's/^.*: \(.*\):.*$/\1/'); do
  ip link set dev $interface promisc off
done
