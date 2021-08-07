#!/usr/bin/with-contenv bashio

if ! bashio::fs.directory_exists "/etc/salt/master.d"; then
    bashio::log.info "Copy initial config files"
    cp -r /tmp/config/* /etc/salt
fi
