#!/bin/bash

ZK_NAMESPACE="${ZK_NAMESPACE:-zoons}"
YAML_FILES_LIST="\
01-service-client-access.yaml \
02-headless-service.yaml \
03-pod-disruption-budget.yaml \
05-stateful-set-volume-emptyDir.yaml\
"

CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

source "${CUR_DIR}/zookeeper-create-universal.sh"
