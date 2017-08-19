#!/bin/sh
varnishd -s malloc,${VARNISH_MEMORY} -a :8080 -b ${VARNISH_BACKEND_ADDRESS}:${VARNISH_BACKEND_PORT} \
  && varnishlog
