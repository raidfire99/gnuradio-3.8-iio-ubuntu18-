echo Gnuradio 3.8 with gr-iio build script, this is going to take some time , 
echo how about a nice game of chess?
echo script is free for all but with credits to RAIDFIRE@INTERCEPT_RF
sudo apt update
sudo apt install python3 -y
sudo apt install python3-pip -y --fix-missing
sudo pip3 install --upgrade git+https://github.com/gnuradio/pybombs.git
pybombs recipes add-defaults
pybombs prefix init ~/gnuradio -R gnuradio-default
pybombs install gr-iio
source ~/gnuradio/setup_env.sh
echo source ~/gnuradio/setup_env.sh >> .bashrc
cd ~
sudo apt install xorg -y
echo export DISPLAY=localhost:0.0 >> .bashrc
