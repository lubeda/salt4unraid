#!/usr/bin/with-contenv bashio

bashio::log.info "Starting API"
salt-api -l $SALT_LOGLEVEL &