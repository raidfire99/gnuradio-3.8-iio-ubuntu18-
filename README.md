
# gnuradio-3.8-iio-ubuntu18.04 Build Script
This is a build script to install Gnuradio 3.8 with GR_IIO and all dependancies on Ubuntu 18.04 using the pybombs method

For the documentation we will assume this will be your only gnuradio installation, if you have a binary version already installed please use the gr38_iio_pybombs_noenvset.sh script this will build 3.8 with iio but skip the step to link gnuradio-companion command to the new install, the command will open your current version still, see below for how to run new version.

Tested and working on fresh hard drive install, WLS and oracle virtual box.



-----------------------------------------------------------------------------------------------------------------------------

USAGE:
-
The only prerequisite for this script is GIT if you dont have it run:
sudo apt install git.

To get and use the script you need to run 4 simple commands:


*git clone https://github.com/raidfire99/gnuradio-3.8-iio-ubuntu18-.git*
*cd gnuradio-3.8-iio-ubuntu18-*
*sudo chmod 775 gr38_iio_pybombs.sh*
*sudo ./gr38_iio_pybombs.sh*

enter password if prompted running the script as sudo (as above) should supress any further prompts.


Wait! pybombs builds all components from source this takes time (quad core with 8gb approx 1hr), build requires 10GB of space but once built you can delete the 'src; directory.



-----------------------------------------------------------------------------------------------------------------------------

RUNNING GNURADIO
-

If you used the standard script enter:

gnuradio-companion

if you used the gr38_iio_pybombs_noenvset.sh, enter:

pybombs run gnuradio-compainion

------------------------------------------------------------------------------------------------------------------------------
OPTIONAL 
-

Default Install Directory (prefix) will be home/your_username/gnuradio if you wish to change it edit the following line in gr38_iio_pybombs.sh

pybombs prefix init ~/gnuradio-R gnuradio-default

to

pybombs prefix init ~/{installation_folder} -R gnuradio-default

-----------------------------------------------------------------------------------------------------------------------------
 RUNBOOK - The script performs the following actions:
-

Update apt repositories


install python 3.6

install pip3

ensure python and pip3 are the versions we need fully patched (20 mins)

install pybombs

download source, build and install gnuradio 3.8

download source, build and install libiio, libad9361, gr-iio gnuradio blocks

map the gnuradio-command to the new pybombs install with setenv
