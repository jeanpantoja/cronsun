CRONSUN_WEB_BIND_ADDRESS=${CRONSUN_WEB_BIND_ADDRESS:-":7079"}

CRONSUN_WEB_AUTH_ENABLED=${CRONSUN_WEB_AUTH_ENABLED:-"true"}

CRONSUN_WEB_SESSION_STORE_PREFIX_PATH=${CRONSUN_WEB_SESSION_STORE_PREFIX_PATH:-"/cronsun/sess/"}
CRONSUN_WEB_SESSION_COOKIE_NAME=${CRONSUN_WEB_SESSION_COOKIE_NAME:-"cronsun_uid"}
CRONSUN_WEB_SESSION_EXPIRATION=${CRONSUN_WEB_SESSION_EXPIRATION:-"8640000"}

CRONSUN_WEB_SESSION_LOG_CLEANER_EVERY_MINUTE=${CRONSUN_WEB_SESSION_LOG_CLEANER_EVERY_MINUTE:-"0"}
CRONSUN_WEB_SESSION_LOG_CLEANER_EXPIRATION_DAYS=${CRONSUN_WEB_SESSION_LOG_CLEANER_EXPIRATION_DAYS:-"3"}

cronsun:conf:web() {
  echo "{
    \"BindAddr\": \"${CRONSUN_WEB_BIND_ADDRESS}\",

    \"Auth\": {
      \"#Enabled\": \"set to true to open auth. default username and password is admin@admin.com/admin\",
      \"Enabled\": ${CRONSUN_WEB_AUTH_ENABLED}
    },

    \"Session\": {
      \"StorePrefixPath\": \"${CRONSUN_WEB_SESSION_STORE_PREFIX_PATH}\",
      \"CookieName\": \"${CRONSUN_WEB_SESSION_COOKIE_NAME}\",
      \"Expiration\": ${CRONSUN_WEB_SESSION_EXPIRATION}
    },

    \"#comment\": \"Delete the expired log (which store in mongodb) periodically\",
    \"LogCleaner\": {
      \"#comment\": \"if EveryMinute is 0, the LogCleaner will not run\",
      \"EveryMinute\": ${CRONSUN_WEB_SESSION_LOG_CLEANER_EVERY_MINUTE},
      \"ExpirationDays\": ${CRONSUN_WEB_SESSION_LOG_CLEANER_EXPIRATION_DAYS}
    }
  }" | python -m json.tool;
}
