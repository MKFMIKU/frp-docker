#!/bin/bash
#########################################################################
# File Name: entrypoint.sh
# Version:1.0.0
# Created Time: 2017-10-21
# Fork from https://github.com/clangcn/frp-docker/blob/master/frpc-docker/entrypoint.sh
#########################################################################

set -e
FRPS_BIN="/frp/frps"
FRPS_CONF="/frp/frps.ini"
FRPC_LOG="/var/log/frps.log"


if [ ! -r ${FRPS_CONF} ]; then
    echo "config file ${FRPS_CONF} not found"
    exit 1
fi
touch ${FRPS_LOG} > /dev/null 2>&1
. ${FRPS_BIN} -c ${FRPS_CONF}
tail -f ${FRPS_LOG}
exec "tail" -f ${FRPS_LOG}