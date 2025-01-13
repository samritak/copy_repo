# Install wget and apt-transport-https if not already installed
apt-get update && apt-get install -y wget apt-transport-https

# Add the Google Chrome repository
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

# Install Google Chrome
apt-get update && apt-get install -y google-chrome-stable
