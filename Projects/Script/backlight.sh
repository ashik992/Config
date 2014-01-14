sudo -s

apt-get install xbacklight
 
mkdir -p /etc/gdm/PostSession
touch /etc/gdm/PostSession/Default
chmod +x /etc/gdm/PostSession/Default
sed -i '$ixbacklight | cat > ~/.brightness' /etc/gdm/PostSession/Default

touch ~/.gnomerc
echo 'b=$(cat ~/.brightness)' >> ~/.gnomerc
echo 'xbacklight -set $b' >> ~/.gnomerc
