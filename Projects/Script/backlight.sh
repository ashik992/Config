sudo apt-get install xbacklight
sudo sed -i '$ixbacklight | cat > ~/.brightness' /etc/gdm/PostSession/Default
touch ~/.gnomerc
echo 'b=$(cat ~/.brightness)' >> ~/.gnomerc
echo 'xbacklight -set $b' >> ~/.gnomerc
