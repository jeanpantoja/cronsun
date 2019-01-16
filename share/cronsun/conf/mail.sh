# TODO: Create system vars
cronsun:conf:mail() {
  echo '{
    "Enable": false,
    "To": ["admin@admin.com"],
    "#HttpAPI": "如有此字段，则按 http api 方式发送",
    "#Keepalive": "如果此时间段内没有邮件发送，则关闭 SMTP 连接，单位/秒",
    "Keepalive": 60,
    "#doc": "https://godoc.org/github.com/go-gomail/gomail#Dialer",
    "Host": "localhost",
    "Port": 25,
    "Username": "admin@admin.com",
    "Password": "admin",
    "SSL": true,
    "#LocalName": "LocalName is the hostname sent to the SMTP server with the HELO command. By default, 'localhost' is sent.",
    "LocalName": "localhost"
  }';
}
