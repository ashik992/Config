#install xbacklight
sudo apt-get install xbacklight

#edit shutdown default to remember brightness
sudo mkdir -p /etc/gdm/PostSession
sudo touch /etc/gdm/PostSession/Default
sudo chmod +x /etc/gdm/PostSession/Default
sudo sed -i '$ixbacklight | cat > ~/.brightness' /etc/gdm/PostSession/Default

#edit startup default to impliment remembered brightness
sudo touch ~/.gnomerc
sudo echo 'b=$(cat ~/.brightness)' >> ~/.gnomerc
sudo echo 'xbacklight -set $b' >> ~/.gnomerc
echo Done! Reboot to test if it is working.
