#!/usr/bin/with-contenv bashio

bashio::log.info "Starting Master"
bashio::log.info "Setting LOGlevel $SALT_LOGLEVEL"
salt-master -l $SALT_LOGLEVEL &