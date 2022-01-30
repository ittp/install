#!/bin/env bash

getOS() {
  uname -a 
}

init() {
 echo "init"
 mkdir -p ~/installer/config/
 
}

configure() {
  config=${INSTALLER_CONFIG}
  echo $config
}

ubuntu() {
  echo "ubuntu installer"
  export INSTALLER="ubuntu"
  export INSTALLER_CONFIG="ubuntu.config.yaml"
}
debian() {
  
  echo "debian installer"
}

wrt() {
  export INSTALLER_ENABLED="1"
  export INSTALLER_CONFIG="wrt.config.yaml"
  init
  
}

windows() {
  OS="win"
  INSTALLER="apt"
  echo "windows installer"
}


'curl -sL https://deb.nodesource.com/setup_lts.x | bash -'
