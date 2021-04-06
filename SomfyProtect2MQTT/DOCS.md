# Home Assistant Add-on: SomfyProtect2MQTT

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Find the "SomfyProtect2MQTT" add-on and click it.
3. Click on the "INSTALL" button.

## How to use

1. Perform the SomfyProtect2MQTT add-on configuration (see below)
2. Save the add-on configuration by clicking the "SAVE" button.
3. Start the add-on.

## Configuration

Add-on configuration:

```yaml
somfy_protect:
  username: mail@example.org
  password: iliketurtles
  sites:
    - Maison
mqtt:
  host: 192.168.1.1
  port: '1883'
  username: homeassistant
  password: homeassistant
  client-id: somfy-protect
  topic_prefix: somfyProtect2mqtt
  ha_discover_prefix: homeassistant
delay_site: '10'
delay_device: '60'
debug: false
```
### Option group `somfy_protect`

The following options are for the option group: `somfy_protect`.

#### Options `username` and `password`

Username and password to use to authenticate to Somfy account.

#### Option `sites`

A list of sites to retrieve datas.

### Option group `mqtt`

The following options are for the option group: `mqtt`.

#### Options `host`, `port`, `username` and `password`

Host and credentials to use to authenticate to MQTT broker.

#### Option `client-id`

MQTT client identifier.

#### Option `topic_prefix`

MQTT prefix to use for data topic.

#### Option `ha_discover_prefix`

MQTT prefix to use for Home-Assistant discovery.

### Option `delay_site`

Define delay in seconds to update sites.

### Option `delay_device`

Define delay in seconds to update devices.

### Option `debug`

Enable/Disable debug mode.