#!/bin/sh

# get docker bridge ip
CONSUL_IP=${CONSUL_IP:=`/sbin/ip route|awk '/default/ {print $3}'`}
CONSUL_PORT=${CONSUL_PORT:=8500}

consul-template -consul $CONSUL_IP:$CONSUL_PORT-template "nginx.conf.ctmpl:/etc/nginx/conf.d/app.conf:service nginx restart || true"

