# Configuring nginx
cp /vagrant/provision/nginx_vhost /etc/nginx/sites-available/nginx_vhost > /dev/null
rm /etc/nginx/sites-enabled/nginx_vhost
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

# Configuring php-fpm
cp /vagrant/provision/20-xdebug.ini /etc/php/7.0/fpm/conf.d/

# Installing php-xdebug
apt-get install php-xdebug

# Restatring services
service php7.0-fpm restart
service nginx restart
