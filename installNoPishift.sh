# Constants and variables
RED='\033[0;31m'
BLUE='\033[1;36m'
NC='\033[0m' # No Color
USER_HOME=$(eval echo ~${SUDO_USER})

clear
echo "This is made for the NI Raspberry Jam Robotics Course!"
echo "This is the PiBot install script that installs the following"
echo "* Adafruit WebIDE (No Git)"
echo "* Scriptor"
echo ""
echo -e "${BLUE}Your Pi will reboot after the install!${NC}"
echo "Checking for root access"
sleep 2
if (( $EUID != 0 ));
then
  echo -e "${RED}===================="
  echo -e "Please run as root!"
  echo -e "====================${NC}"
  exit
else
  echo -e "${BLUE}Installing dependencies${NC}"
  sleep 0.5
  apt-get update
  apt-get install -y git curl python3 python3
  clear
  echo -e "${BLUE}Installing Adafruit WebIDE${NC}"
  sleep 0.5
  curl https://raw.githubusercontent.com/adafruit/Adafruit-WebIDE/alpha/scripts/install.sh | sudo sh
  clear
  echo -e "${BLUE}Installing Scriptor${NC}"
  cd ${USER_HOME}
  git clone https://github.com/vlee489/scriptor.git
  cd scriptor
  bash install.sh
  echo -e "${BLUE}===================="
  echo -e "Install Finsihed!"
  echo -e "Reboot in 5 Seconds"
  echo -e "====================${NC}"
  echo -e "${RED}User Ctrl + C to cancel reboot!${NC}"
  sleep 5
  reboot
fi
