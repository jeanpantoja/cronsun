#!/usr/bin/env bash

CRONSUN_CONF_DIR='cronsun/conf'

cronconf "$CRONSUN_CONF_DIR" && cronweb -conf "${CRONSUN_CONF_DIR}/base.json"
