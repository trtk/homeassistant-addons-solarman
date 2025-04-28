#!/bin/bash

echo "Starting Solarman MQTT Bridge..."

# Elindítjuk az alkalmazást a megfelelő paraméterekkel
python3 solarmanmqtt.py \
  --mqtt_broker "$mqtt_broker" \
  --mqtt_username "$mqtt_username" \
  --mqtt_password "$mqtt_password" \
  --sn "$solarman_sn"