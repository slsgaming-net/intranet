clear
sudo rm -r /var/www/html/intranet
echo "Deleted Previous Instance..."
sudo git clone https://github.com/slsgaming-net/intranet /var/www/html/intranet
sleep 3
clear
echo "Cloned Repo!"
sleep 5
clear