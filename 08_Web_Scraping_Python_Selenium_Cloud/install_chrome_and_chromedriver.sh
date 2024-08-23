# Install Google Chrome and the corresponding ChromeDriver on Linux

# Commands to run this .sh file (use VSCode Terminal)
# cd into the directory where 'install_chrome_and_chromedriver.sh' is located
# chmod +x install_chrome_and_chromedriver.sh
# ./install_chrome_and_chromedriver.sh

# After installation, check wheter chromedriver is available in:
# cd usr/local/bin

# Update the Package List
sudo apt update
sudo apt install -y wget unzip

# Install Required Dependencies
sudo apt install -y \
    fonts-liberation \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libatspi2.0-0 \
    libcairo2 \
    libcups2 \
    libdbus-1-3 \
    libdrm2 \
    libgbm1 \
    libgtk-3-0 \
    libpango-1.0-0 \
    libu2f-udev \
    libvulkan1 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxkbcommon0 \
    libxrandr2 \
    xdg-utils

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Get Google Chrome Version
CHROME_VERSION=$(google-chrome --version | grep -oP '\d+\.\d+\.\d+\.\d+')

# Download and Install the Corresponding ChromeDriver from: https://googlechromelabs.github.io/chrome-for-testing
wget https://storage.googleapis.com/chrome-for-testing-public/$CHROME_VERSION/linux64/chromedriver-linux64.zip
unzip chromedriver-linux64.zip
cd chromedriver-linux64
sudo mv chromedriver /usr/local/bin/
sudo chmod +x /usr/local/bin/chromedriver
