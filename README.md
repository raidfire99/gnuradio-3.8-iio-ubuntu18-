
# gnuradio-3.8-iio-ubuntu18.04 Build Script
This is a build script to install Gnuradio 3.8 with GR_IIO and all dependancies on Ubuntu 18.04 using the pybombs method

For the documentation we will assume this will be your only gnuradio installation, if you have a binary version already installed please use the gr38_iio_pybombs_noenvset.sh script this will build 3.8 with iio but skip the step to link gnuradio-companion command to the new install, the command will open your current version still, see below for how to run new version.

This script can be run on a fresh install with no dependancies. GIT will be installed by default as the first task.

-----------------------------------------------------------------------------------------------------------------------------

USAGE:
download the script gr38_iio_pybombs.sh

make the script executable with:
sudo chmod 775 gr38_iio_pybombs.sh

execute the script with:
./gr38_iio_pybombs.sh

Wait! pybombs builds all components from source this takes time (quad core with 8gb approx 1hr), build requires 10GB of space but once built you can delete the 'src; directory.



-----------------------------------------------------------------------------------------------------------------------------

RUNNING GNURADIO

If you used the standard script enter:

gnuradio-companion

if you used the gr38_iio_pybombs_noenvset.sh, enter:

pybombs run gnuradio-compainion

------------------------------------------------------------------------------------------------------------------------------
OPTIONAL 

Default Install Directory (prefix) will be home/your_username/gnuradio if you with to change it edit the following line in gr38_iio_pybombs.sh

pybombs prefix init ~/gnuradio-R gnuradio-default
pybombs prefix init ~/{installation_folder} -R gnuradio-default

