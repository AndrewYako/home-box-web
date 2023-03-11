#sudo apt update
#sudo rm /usr/bin/python3
#sudo apt install python 3.9
#sudo pip install --upgrade django

#sudo pip3 install gunicorn
#sudo apt update
#sudo apt upgrade
sudo pip3 install --upgrade django
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo cp /home/box/web/etc/nginx.conf /etc/nginx/
#sudo /etc/init.d/nginx restart
#sudo gunicorn --bind="0.0.0.0:8080" hello:wsgi_application
#sudo source django_env/bin/activate
#pip install django
#pip install gunicorn
#sudo python3 manage.py migrate
#sudo python3 manage.py runserver 0.0.0.0:8000

# jobs -l
# sudo kill -9 ...