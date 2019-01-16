#!/usr/bin/env bash

CRONSUN_CONF_DIR='cronsun/conf'
cronconf "$CRONSUN_CONF_DIR" && cronnode -conf "${CRONSUN_CONF_DIR}/base.json"
