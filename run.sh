read -p "輸入前二段IP (如: 172.50): " IP     
grep -rl 172.50 . | xargs sed -i "s/172\.50/${IP}/g"
echo "OK"
nano .env
docker-compose down
docker-compose up -d --force-recreate --scale node=2
