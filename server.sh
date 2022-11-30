sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install -y libsodium-dev cmake g++ git build-essential -y
sudo apt install git -y
git clone https://github.com/madMAx43v3r/chia-plotter.git 
cd chia-plotter
git submodule update --init
./make_devel.sh
cd ..
sudo apt install nodejs -y
git clone https://github.com/SametBasturkk/RclonePlotMove.git
mkdir accountservers
mkdir .config
sudo -v ; curl https://rclone.org/install.sh | sudo bash