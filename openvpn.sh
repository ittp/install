#!/bin/env bash

. /lib/curl

check_curl

local() {
  
}
curl_get() {
  local url=$1
  curl -X GET $url
}

get() {
  local $curl_get="",
  url=$1
  if [-r $CURL ]; then 
    $curl_get $url 
  fi;
}

install() {

  export MENU_OPTION="1"
  export CLIENT="foo"
  export PASS="1"
  ./openvpn-install.sh
}

# 
