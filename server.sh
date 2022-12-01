sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install -y build-essential cmake libgmp-dev libnuma-dev -y
sudo apt install git -y
git clone https://github.com/Chia-Network/bladebit.git && cd bladebit
./build.sh
cd ..
sudo apt install nodejs -y
git clone https://github.com/SametBasturkk/RclonePlotMove.git
mkdir accountservers
mkdir final
mkdir temp
mkdir ram
sudo mount -t tmpfs -o size=110G tmpfs /home/ubuntu/ram
screen -dmS plotting bash -c 'bladebit -t 16 -c xch17v7vumtucgac9hag7exg6llx0g20uqvwazpwkr9mf9st3j82mllqkjnpw6 -f b65f297db130973df365c9aa59a4962a919b9b8cae2b11740095ebf7f68bd0a2054aae15ecdac30158f8d26d2ba02a21 diskplot -b 64 -a --cache 200G -t1 ./temp/ ./final/'
sudo -v ; curl https://rclone.org/install.sh | sudo bash
