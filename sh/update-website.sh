clear
echo "Removing update.sh..."
sudo rm -f update.sh
sudo rm -r /var/www/html/intranet
echo "Deleted update.sh and /internet"
sleep 3
wget https://raw.githubusercontent.com/slsgaming-net/intranet/main/update.sh
clear
sudo sh update.sh
sleep 3 
clear