#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9b8d9708-893c-4826-b3bf-5e6bd526b1a1"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

