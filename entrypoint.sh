curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
unzip v2ray.zip 
unzip v2ray.zip 
chmod +x /v2raybin/v2ray 
rm -rf v2ray.zip \
chgrp -R 0 /v2raybin 
chmod -R g+rwX /v2raybin 

#echo -e -n "$CONFIG_JSON1" > config.json
#echo -e -n "$PORT" >> config.json
#echo -e -n "$CONFIG_JSON2" >> config.json
#echo -e -n "$UUID" >> config.json
#echo -e -n "$CONFIG_JSON3" >> config.json

sed -i "s/66666/$PORT/g" config.json
#sed -i "s/your_uuid/$UUID/g" config.json

./v2ray
