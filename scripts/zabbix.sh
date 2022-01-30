#!/bin/env sh
zabbix_packages="zabbix-server-pgsql zabbix-frontend-php php7.4-pgsql zabbix-nginx-conf zabbix-sql-scripts zabbix-agent"
zabbix_version="5.5-1"
os="debian"
arch=""
url=https://repo.zabbix.com/zabbix/5.5/debian/pool/main/z/zabbix-release/zabbix-release_5.5-1+debian11_all.deb
ex="/bin/curl"
curl_check() {
local dir='/bin'
local curl=$dir/curl
if [ -x /bin/curl ]; then 
  curl -v

 else
  echo "no curl. install?"
  read $1
 fi;
}
c_get() { 
  local url=$1
  curl -fsSL $url -v
}

c_post {

}
# curl https://repo.zabbix.com/zabbix/5.5/debian/pool/main/z/zabbix-release/zabbix-release_5.5-1+debian11_all.deb-fsSL $url
if [ -x /bin/curl ]; then 
  echo "curl ok"
  c_get $url
 else
  
 fi;
wget $url
dpkg -i zabbix-*.deb
apt install $zabbix_packages -y
