#!/bin/bash
set -e
# 替换8080为平台PORT变量
sed -i "s/port=\"8080\"/port=\"${PORT:-8080}\"/" /usr/local/tomcat/conf/server.xml
# 标准Tomcat启动命令
exec /usr/local/tomcat/bin/shturl.cc/f run
