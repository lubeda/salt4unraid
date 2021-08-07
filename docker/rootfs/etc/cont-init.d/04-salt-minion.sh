#!/usr/bin/with-contenv bashio

bashio::log.info "Starting Minion"
salt-minion -l $SALT_LOGLEVEL &