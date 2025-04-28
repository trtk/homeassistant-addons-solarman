#!/bin/bash
set -e

echo "Creating config.json..."

cat <<EOF > /app/config.json
{
  "name": "${name}",
  "url": "${url}",
  "appid": "${appid}",
  "secret": "${secret}",
  "username": "${username}",
  "password": "${password}",
  "orgId": "${orgId}",
  "stationId": ${stationId},
  "inverterId": "${inverterId}",
  "loggerId": ${loggerId},
  "interval": ${interval},
  "debug": ${debug},
  "mqtt": {
    "broker": "${mqtt_broker}",
    "port": ${mqtt_port},
    "topic": "${mqtt_topic}",
    "username": "${mqtt_username}",
    "password": "${mqtt_password}"
  }
}
EOF

echo "Starting Solarman MQTT Bridge..."
python3 /app/solarmanmqtt.py --config /app/config.json
