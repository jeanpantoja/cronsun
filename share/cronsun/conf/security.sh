# TODO: Create system vars
cronsun:conf:security() {
  echo '{
    "open": false,
    "users": [
      "www", "db"
    ],
    "ext": [
      ".sh", ".py"
    ]
  }';
}
