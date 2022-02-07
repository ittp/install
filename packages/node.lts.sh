#!/bin/env bash


node_lts="https://deb.nodesource.com/setup_lts.x"

node_current="https://deb.nodesource.com/setup_current.x"

check_curl() {
  if [ -z /sbin/curl ]; then
  echo "curl ok"
    apt-get update
  else
    echo "no curl"
    apt-get update && apt-get install curl -y
  fi;
}


# curl -sL $url | $e


bail() {
    echo 'Error executing command, exiting'
    exit 1
}

exec_cmd_nobail() {
    echo "+ $1"
    bash -c "$1"
}

exec_cmd() {
    exec_cmd_nobail "$1" || bail
}

check_curl

exec_cmd curl -fS $lts | bash -
