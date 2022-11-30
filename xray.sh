#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9fa50ec0-c1e9-438a-bfb5-b4c34222d2ca"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

