#!/bin/sh
supervisord -c /etc/supervisord.conf
supervisorctl -c /etc/supervisord.conf
