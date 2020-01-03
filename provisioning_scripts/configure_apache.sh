echo '*** Configuring Apache2 server ***'


echo 'Enabling required modules'

sudo a2enmod ssl
sudo a2enmod headers
sudo a2enmod proxy
sudo a2enmod proxy_http


echo 'Replacing /var/www/html/index.html with something simple'
sudo bash -c 'echo "<html><body><h1>It works!</h1>
</body></html>" > /var/www/html/index.html'


echo '*** Configuring Apache2 server - COMPLETE ***'