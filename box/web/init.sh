
#sudo pip3 install django
#sudo pip3 install gunicorn
#sudo apt update
#sudo apt upgrade
sudo pip3 install --upgrade django
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo cp /home/box/web/etc/nginx.conf /etc/nginx/
sudo /etc/init.d/nginx restart
#sudo gunicorn --bind="0.0.0.0:8080" hello:wsgi_application
sudo source django_env/bin/activate
sudo cd /home/box/web/ask
sudo python3 manage.py runserver 0.0.0.0:8000

