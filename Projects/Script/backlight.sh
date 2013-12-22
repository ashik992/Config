sudo sed -i '$ib=$(cat /usr/local/etc/.brightness)' /etc/rc.local
sudo sed -i '$ixbacklight -set $b' /etc/rc.local
