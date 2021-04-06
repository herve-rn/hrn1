#!/usr/bin/env bashio

bashio::log.info "Generating config.yaml from options.json"
echo '# Generated by homeassistant, do not edit!' > /usr/src/SomfyProtect2MQTT/somfyProtect2Mqtt/config/config.yaml.tmp
echo '# Edit configuration only at the Add-on configuration tab!' >> /usr/src/SomfyProtect2MQTT/somfyProtect2Mqtt/config/config.yaml.tmp
json2yaml /data/options.json >> /usr/src/SomfyProtect2MQTT/somfyProtect2Mqtt/config/config.yaml.tmp
sed 's/  -/    -/'  /usr/src/SomfyProtect2MQTT/somfyProtect2Mqtt/config/config.yaml.tmp > /usr/src/SomfyProtect2MQTT/somfyProtect2Mqtt/config/config.yaml
bashio::log.info "Configuration :"
bashio::log.info "$(cat /usr/src/SomfyProtect2MQTT/somfyProtect2Mqtt/config/config.yaml)"

debug=""
if $(bashio::config.true debug); then
    bashio::log.info "Will be started in debug mode"
    debug="-v"
fi

bashio::log.info "Image build"
bashio::log.info "starting original stuff..."
python3 /usr/src/SomfyProtect2MQTT/somfyProtect2Mqtt/main.py $debug