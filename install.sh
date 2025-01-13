# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# apt-get update
# apt-get install -y ./google-chrome-stable_current_amd64.deb

# wget https://chromedriver.storage.googleapis.com/<version>/chromedriver_linux64.zip
# unzip chromedriver_linux64.zip -d chromedriver/
# export PATH=$PATH:$(pwd)/chromedriver

#!/bin/bash

# Download and extract Chrome binary

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome-stable.deb
dpkg-deb -x google-chrome-stable.deb chrome/

# Download and extract Chromedriver
rm -rf chromedriver/
mkdir chromedriver
wget https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
unzip chromedriver_linux64.zip -d chromedriver/

# Add Chromedriver to PATH
export PATH=$PATH:$(pwd)/chromedriver

# Set Chrome binary path as an environment variable
export CHROME_BIN=$(pwd)/chrome/opt/google/chrome/chrome
