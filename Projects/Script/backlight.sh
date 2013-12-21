sudo sed -i '$ib=$(cat ~/.brightness)' /etc/rc.local
sudo sed -i '$ixbacklight -set $b' /etc/rc.local
