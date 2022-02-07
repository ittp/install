#!/bin/env bash

add_sources() {
  local keyring=/usr/share/keyrings/yarnkey.gpg", 
  url="https://dl.yarnpkg.com/debian", 
  list="/etc/apt/sources.list.d/yarn.list"
  
  # echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" |  tee /etc/apt/sources.list.d/yarn.list
  echo "deb [signed-by=$keyring] $url stable main" |  tee $list
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor |  tee /usr/share/keyrings/yarnkey.gpg >/dev/null

}
install() {
  local pkg=$1
  apt-get update && apt-get install $pkg
}

add_sources
install yarn
