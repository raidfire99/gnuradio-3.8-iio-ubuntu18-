sudo apt update
sudo apt install git
sudo apt install python3 -y
sudo apt install python3-pip -y --fix-missing
sudo pip3 install --upgrade git+https://github.com/gnuradio/pybombs.git
pybombs recipes add-defaults
pybombs prefix init ~/gnuradio -R gnuradio-default
pybombs install gr-iio
source ~/gnuradio/setup_env.sh
cd ~
sudo apt install xorg -y
echo export DISPLAY=localhost:0.0 >> .bashrc
