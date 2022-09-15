#!/bin/sh

WD=$(dirname $0)
SCRIPTS_DIR=${WD}/../../scripts
export ENV_DIR=${WD}/../../../compose/conf/swarm-env-config
export COMPOSE_FILE=${WD}/registry-swarm.yml
export STACK_NAME=registry-swarm
export ENV_FILE=${ENV_DIR}/swarm.env

${SCRIPTS_DIR}/stack.deploy.sh
