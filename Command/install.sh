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

echo 'Installed Successfully!'
