
sudo apt install python3.10-venv --assume-yes
echo
echo
echo "******************************** Cloning OpenLane and will start installation of openlane  *******************************"
echo
echo
git clone https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane/
sudo make
sudo make test