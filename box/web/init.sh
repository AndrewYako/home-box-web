
sudo chmod 777 /home/
sudo apt update
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo cp /home/box/web/etc/nginx.conf /etc/nginx/
sudo /etc/init.d/nginx restart

sudo apt purge -y python2.7-minimal
sudo apt install python3.5
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python
sudo python3.5 get-pip.py --force-reinstall
sudo apt install -y python3-pip
sudo ln -s /usr/bin/pip3 /usr/bin/pip
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn
source /home/box/web/django_env/bin/activate
gunicorn --bind="0.0.0.0:8080" hello:wsgi_application
cd /home/box/web/ask/
sudo python3 manage.py migrate
sudo python3 manage.py runserver 0.0.0.0:8000




#python --version
#pip --version
# jobs -lS
# sudo kill -9 ...