clear
echo "Removing update.sh..."
sudo rm -f update.sh
echo "Deleted update.sh"
sleep 5
wget https://raw.githubusercontent.com/slsgaming-net/intranet/main/update.sh
clear
sudo sh update.sh