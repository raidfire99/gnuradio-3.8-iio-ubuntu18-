sudo apt install git
sudo apt install python3
sudo apt install python3-pip
sudo pip3 install --upgrade git+https://github.com/gnuradio/pybombs.git
sudo pip3 install --upgrade git+https://github.com/gnuradio/pybombs.git
pybombs recipes add-defaults
pybombs prefix init ~/gnuradio -R gnuradio-default
pybombs install gr-iio

