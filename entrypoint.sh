mkdir -m 777 /v2raybin
cd /v2raybin
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/latest/download/v2ray-linux-64.zip 
unzip v2ray.zip 
unzip v2ray.zip 
chmod +x /v2raybin/v2ray 
rm -rf v2ray.zip 
chgrp -R 0 /v2raybin 
chmod -R g+rwX /v2raybin 
curl -L -H "Cache-Control: no-cache" https://raw.githubusercontent.com/railjty/v2ray-heroku/master/config1.json > ./config1.json ;
sed "s/66666/$PORT/" config1.json > config.json ;
./v2ray
