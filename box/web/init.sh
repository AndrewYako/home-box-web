#sudo apt update
#sudo rm /usr/bin/python3
#sudo apt install python 3.5
#sudo ln -s /usr/bin/python3.5 /usr/bin/python3
#sudo pip install --upgrade django

#sudo pip3 install gunicorn
sudo chmod 777 /home/
sudo apt update
sudo apt install python3.5
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
#sudo apt upgrade
#sudo pip3 install django==2.0
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo cp /home/box/web/etc/nginx.conf /etc/nginx/
sudo /etc/init.d/nginx restart
cd /home/box/web/
#source django_env/bin/activate
#cd /home/box/web/ask/
#sudo pip3 install gunicorn
#sudo python3 manage.py migrate
#cd /home/box/web/
#gunicorn --bind="0.0.0.0:8080" hello:wsgi_application
#python3 manage.py runserver 0.0.0.0:8000



# jobs -lS
# sudo kill -9 ...