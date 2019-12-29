
# gnuradio-3.8-iio-ubuntu18.04 Build Script
This is a build script to install Gnuradio 3.8 with GR_IIO and all dependancies on Ubuntu 18.04 using the pybombs method

The git repositry contains 3 scripts, you only need to choose 1, if you are totally unfamiliar with gnuradio, pybombs, building and installing and just want to get gnuradio 3.8 running with an adalm pluto or any other iio based device choose option 1 and go make a big pot of coffee!

- gr38_iio_pybombs.sh - use this on a fresh ububtu installation, works on any host, installs gr3.8, gr-iio, sets environmental variables.
- gr38_iio_pybombs_nosetenv.sh - use this on ubuntu 18.04 with an existing gnuradio installation of any version, if your existing version is installed to home/username/gnuradio, see optional section below before proceeding.

- gr38_iio_pybombs_wls.sh - use this on windows WLS, installs all gr components as above plus graphical environment, requires ximg server installing on the windows host, WLS must be closed and reopened (reboot in wls land) before graphical components will work, trying to run gnuradio before the reboot will result in server refused connection errors.


Tested and working on fresh hard drive install, WLS and oracle virtual box.



-----------------------------------------------------------------------------------------------------------------------------

USAGE:
-
The only prerequisite for this script is GIT if you dont have it run:
*sudo apt install git*

To get and use the script you need to run 4 simple commands, (edit filnames if using _nosetenv or wls versions):


*git clone https://github.com/raidfire99/gnuradio-3.8-iio-ubuntu18-.git*

*cd gnuradio-3.8-iio-ubuntu18-*

*sudo chmod 775 gr38_iio_pybombs.sh*

*sudo ./gr38_iio_pybombs.sh*


enter password to run as sudo, the default timeout for sudo is 15 minutes so after the gnuradio build has completed you will be reprompted for your password at the point of gr-iio build and install.

If you see a message asing if you would like to restart services during install select yes.


Wait! pybombs builds all components from source this takes time (quad core with 8gb approx 1hr), build requires 10GB of space but once built you can delete the 'src; directory.



-----------------------------------------------------------------------------------------------------------------------------

RUNNING GNURADIO
-

If you used the standard script enter:

*gnuradio-companion*

if you used the gr38_iio_pybombs_noenvset.sh, enter:

*pybombs run gnuradio-compainion*

if *gnuradio-companion* fails run the following command and try again, if all else fails the line above with the full pybombs command will always work.

*source ~/gnuradio/setup_env.sh*

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

times are approximate based on quad core 3.5ghz with 8gb ram and ssd drive

Update apt repositories


install python 3.6

install pip3

update pybombs repositories (5 mins)

install pybombs

download source, build and install gnuradio 3.8 (1 hour)

download source, build and install libiio, libad9361, gr-iio gnuradio blocks (10 mins)

map the gnuradio-command to the new pybombs install with setenv (command removed on nosetenv script version)

WLS version only: 

install xorg (10 mins)

add  display export to .bashrc 
