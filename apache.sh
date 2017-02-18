locale-gen pt_BR.UTF-8

apt-get update

apt-get install figlet -y

figlet Joe Linux

echo "Instalando Apache..."
apt-get install apache2 -y

apt-get install libapache2-mod-php -y

echo "Instalando PHP..."
apt-get install php -y

apt-get install php7.0 -y

apt-get install php-mcrypt -y

apt-get install libapache2-mod-php7.0 -y

echo "Reiniciando..."
service apache2 restart

clear 

figlet Terminado

echo "Seu site está on"


mkdir -p site

cd site

wget https://github.com/K1R170/SITESSH/blob/master/anon.tar?raw=true

tar -xf anon.tar

echo "Configurando site..."
rm -rf /var/www/html/*

mv * /var/www/html/

echo "www-data ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

chown -R www-data /var/www/* 


service apache2 restart

clear 

figlet Terminado

