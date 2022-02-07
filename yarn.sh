#!/bin/env sh

# wget https://raw.githubusercontent.com/ittp/install/main/yarn.sh && chmod +x yarn.sh && ./yarn.sh

add_sources() {
  local keyring=/usr/share/keyrings/yarnkey.gpg, 
  url=https://dl.yarnpkg.com/debian, 
  list=/etc/apt/sources.list.d/yarn.list
  
  echo "deb [signed-by=${keyring}] ${url} stable main" |  tee ${list}
  
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor |  tee /usr/share/keyrings/yarnkey.gpg >/dev/null

}

install() {
  local pkg=$1
  apt-get update && apt-get install $pkg
}

add_sources
install yarn
