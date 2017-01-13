#!/bin/bash
set -e
set -x

sudo pip2 install robotframework
pybot --version | grep "Robot Framework" 

sudo apt-get install python-wxgtk2.8
dpkg --list | grep "python-wxgtk2.8"

pip2 install robotframework-ride
find ~/ -name ride.py | grep "build" 

pip2 install robotframework-selenium2library
#robotframework-selenium2library

python <<EOF
import Selenium2Library
print Selenium2Library
EOF

cd natsort-3.3.0
sudo python setup.py install
cd ../NaviNet-robotframework-excellibrary-8744913
sudo python setup.py install
cd ../xlutils-1.7.1
sudo python setup.py install
cd ../xlrd-1.0.0
sudo python setup.py install
cd ../xlwt-1.2.0
sudo python setup.py install


echo 'Installed Successfully!'
