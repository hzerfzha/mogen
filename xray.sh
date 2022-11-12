#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3dc9d21e-4ad7-4c57-a71d-939d123e849a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

