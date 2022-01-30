#!/bin/env bash

getOS() {
  uname -a 
}
init() {
 echo "init"
 
}
ubuntu() {
  echo "ubuntu installer"
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
