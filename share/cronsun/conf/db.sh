CRONSUN_DB_HOST=${CRONSUN_DB_HOST:-"127.0.0.1:27017"}
CRONSUN_DB_NAME=${CRONSUN_DB_NAME:-"cronsun"}
CRONSUN_DB_AUTH_SOURCE=${CRONSUN_DB_AUTH_SOURCE:-""}
CRONSUN_DB_USER_NAME=${CRONSUN_DB_USER_NAME:-""}
CRONSUN_DB_PASSWORD=${CRONSUN_DB_PASSWORD:-""}
CRONSUN_DB_TIMEOUT=${CRONSUN_DB_TIMEOUT:-"15"}


cronsun:conf:db() {
  echo "{
    \"Hosts\": [
      \"${CRONSUN_DB_HOST}\"
    ],
    \"Database\": \"${CRONSUN_DB_NAME}\",
    \"#AuthSource\": \"AuthSource Specify the database name associated with the user’s credentials.\",
    \"#AuthSource\": \"AuthSource defaults to the cronsun's Database.\",
    \"#AuthSource\": \"If connect mongodb like './bin/mongo mytest -u test -p 123 --authenticationDatabase admin' \",
    \"#AuthSource\": \"the AuthSource is 'admin'. \",
    \"AuthSource\": \"${CRONSUN_DB_AUTH_SOURCE}\",
    \"UserName\": \"${CRONSUN_DB_USER_NAME}\",
    \"Password\": \"${CRONSUN_DB_PASSWORD}\",
    \"#Timeout\": \"connect timeout duration/second\",
    \"Timeout\": ${CRONSUN_DB_TIMEOUT}
  }" | python -m json.tool;
}
