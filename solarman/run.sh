#!/bin/bash
set -e

echo "Creating config.json..."

cat <<EOF > /app/config.json
{
  "name": "${SOLARMAN_NAME}",
  "url": "${SOLARMAN_URL}",
  "appid": "${SOLARMAN_APPID}",
  "secret": "${SOLARMAN_SECRET}",
  "username": "${SOLARMAN_USERNAME}",
  "password": "${SOLARMAN_PASSWORD}",
  "orgId": "${SOLARMAN_ORGID}",
  "stationId": ${SOLARMAN_STATIONID},
  "inverterId": "${SOLARMAN_INVERTERID}",
  "loggerId": ${SOLARMAN_LOGGERID},
  "interval": ${SOLARMAN_INTERVAL},
  "debug": ${SOLARMAN_DEBUG},
  "mqtt": {
    "broker": "${MQTT_BROKER}",
    "port": ${MQTT_PORT},
    "topic": "${MQTT_TOPIC}",
    "username": "${MQTT_USERNAME}",
    "password": "${MQTT_PASSWORD}"
  }
}
EOF

echo "Starting Solarman MQTT Bridge..."
python3 /app/solarman.py --config /app/config.json
