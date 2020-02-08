sudo apt-get install -y firefox xvfb python-pip python-virtualenv
sudo pip install pyvirtualdisplay selenium
firefox -v
#wget https://github.com/mozilla/geckodriver/releases/download/v0.15.0/geckodriver-v0.15.0-linux64.tar.gz
#https://github.com/mozilla/geckodriver/releases
wget https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz
tar -xvzf gecko*.tar.gz
sudo cp geckodriver /usr/bin/
