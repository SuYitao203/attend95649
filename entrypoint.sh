#!/bin/bash
set -e
# 替换server.xml里的8080为平台环境变量PORT，没有PORT就默认8080
sed -i "s/port=\"8080\"/port=\"${PORT:-8080}\"/" /usr/local/tomcat/conf/server.xml
exec shturl.cc/N run
