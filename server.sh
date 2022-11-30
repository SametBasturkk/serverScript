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
mkdir final
mkdir temp
mkdir ram
sudo mount -t tmpfs -o size=110G tmpfs /home/ubuntu/ram
screen -dmS plotting bash -c './chia-plotter/build/./chia_plot -n -1 -k 32 -r 12 -u 256 -v 256 -f b65f297db130973df365c9aa59a4962a919b9b8cae2b11740095ebf7f68bd0a2054aae15ecdac30158f8d26d2ba02a21 -c xch17v7vumtucgac9hag7exg6llx0g20uqvwazpwkr9mf9st3j82mllqkjnpw6 -t /home/ubuntu/temp/ -2 /home/ubuntu/ram/ -d /home/ubuntu/final/'
sudo -v ; curl https://rclone.org/install.sh | sudo bash
