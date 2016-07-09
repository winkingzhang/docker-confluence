#!/bin/bash
set -e

#if [ "${1:0:1}" = '-' ]; then
#	set -- ./bin/catalina.sh "$@"
#fi

if [ "$1" = './bin/catalina.sh' ]; then
	mkdir -p "${CONFLUENCE_HOME}"
	mkdir -p "${CONFLUENCE_HOME}/data"
	chmod 700 "${CONFLUENCE_HOME}/data"
	chown -R ${RUN_USER}:${RUN_GROUP} "${CONFLUENCE_HOME}/data"
fi

exec "$@"
