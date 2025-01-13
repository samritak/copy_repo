# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# apt-get update
# apt-get install -y ./google-chrome-stable_current_amd64.deb

wget https://chromedriver.storage.googleapis.com/<version>/chromedriver_linux64.zip
unzip chromedriver_linux64.zip -d chromedriver/
export PATH=$PATH:$(pwd)/chromedriver
