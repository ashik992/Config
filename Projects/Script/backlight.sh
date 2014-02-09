sudo -s

#install xbacklight
apt-get install xbacklight
 
#edit shutdown default to remember brightness
mkdir -p /etc/gdm/PostSession
touch /etc/gdm/PostSession/Default
chmod +x /etc/gdm/PostSession/Default
sed -i '$ixbacklight | cat > ~/.brightness' /etc/gdm/PostSession/Default

#edit startup default to impliment remembered brightness
touch ~/.gnomerc
echo 'b=$(cat ~/.brightness)' >> ~/.gnomerc
echo 'xbacklight -set $b' >> ~/.gnomerc
