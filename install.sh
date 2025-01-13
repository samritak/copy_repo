# Create a directory for Chromium
mkdir -p chromium

# Download the latest portable Chromium build
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chromium/chrome.deb

# Extract the deb package (since you can't install it directly)
dpkg-deb -x chromium/chrome.deb chromium/

# Set the Chrome binary path
mv chromium/opt/google/chrome/chrome chromium/

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get update
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb
