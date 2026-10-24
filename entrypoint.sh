#!/bin/bash
echo "==== entrypoint 脚本启动 ===="
if [ -n "$PORT" ] && [ "$PORT" != "8080" ]; then
  echo "检测到环境变量 PORT=$PORT，准备修改tomcat端口"
  sed -i "s/port=\"8080\"/port=\"$PORT\"/g" "$CATALINA_HOME/conf/server.xml"
  echo "端口修改完成"
fi
exec "$CATALINA_HOME/bin/catalina.sh" run
