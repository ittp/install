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



# get_package_config [package_name]
get_package_config() {
  package_name=$1
  file=`./packages/$OS/$ARCH/$PACKAGE`
  cat ${file}
  return $file
}

download() {
  URL=$1
  C=ARRAY("curl wget")
  echo $C[1]
  curl -sL $url | bash -
}

alias get=/scripts/download.sh


'curl -sL https://deb.nodesource.com/setup_lts.x | bash -'
