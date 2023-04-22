
sudo chmod 777 /home/
sudo apt update
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo cp /home/box/web/etc/nginx.conf /etc/nginx/
sudo /etc/init.d/nginx restart

sudo apt purge -y python2.7-minimal
sudo apt install python3.5
sudo unlink /usr/bin/python3
sudo unlink /usr/bin/pip3

sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python
sudo curl https://bootstrap.pypa.io/pip/3.5/get-pip.py -o get-pip.py
sudo python3.5 get-pip.py --force-reinstall
#sudo ln -s /usr/bin/pip3 /usr/bin/pip
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn

gunicorn --bind="0.0.0.0:8080" hello:wsgi_application
source /home/box/web/django_env/bin/activate
cd /home/box/web/ask/
sudo python3 manage.py migrate
sudo python3 manage.py runserver 0:8000

#sudo python3 manage.py makemigrations qa
#sudo python3 manage.py migrate
#python --version
#pip --version
# jobs -lS
#fuser 80/tcp
# sudo kill -9 ...
sudo service mysql status
sudo service mysql restart