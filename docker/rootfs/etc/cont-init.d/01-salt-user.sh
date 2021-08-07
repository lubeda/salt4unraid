#!/usr/bin/with-contenv bashio

if ! bashio::fs.directory_exists "/home/salt_api"; then
    bashio::log.info "Create user"
    adduser -D salt_api
fi
bashio::log.info "Update passwd"
echo "salt_api:$SALT_PASSWORD" | chpasswd
