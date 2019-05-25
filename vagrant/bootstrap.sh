echo -e "\n** Bootstrap **\n"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:fish-shell/release-2
sudo apt-get update

php=7.3
sudo apt-get install -y software-properties-common curl git-core php$php apache2 libapache2-mod-php$php mysql-server php$php-mysql php$php-gd php$php-curl php$php-bcmath php$php-imagick fish

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/www /var/www
fi

echo -e "\n** Apache config **\n"

sudo a2enmod rewrite

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/$php/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/$php/apache2/php.ini
sed -i "s/disable_functions = .*/disable_functions = /" /etc/php/$php/cli/php.ini
sed -i "s/export APACHE_RUN_USER=.*/export APACHE_RUN_USER=vagrant/" /etc/apache2/envvars
sed -i "s/export APACHE_RUN_GROUP=.*/export APACHE_RUN_GROUP=vagrant/" /etc/apache2/envvars

sudo cp /vagrant/tools/apache2/dev.conf /etc/apache2/sites-available/dev.conf

sudo a2ensite dev.conf
sudo a2dissite 000-default.conf
sudo systemctl restart apache2

echo -e "\n** Composer **\n"

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo -e "\n** Node **\n"

sudo curl -sSo /usr/local/bin/n https://raw.githubusercontent.com/visionmedia/n/master/bin/n
sudo chmod +x /usr/local/bin/n

echo -e "\n** Wordpress **\n"

sudo ln -sf /vagrant/tools/wp/setup.sh /usr/local/bin/wp-setup
sudo chmod +x /usr/local/bin/wp-setup
sudo ln -sf /vagrant/tools/wp/init.sh /usr/local/bin/wp-init
sudo chmod +x /usr/local/bin/wp-init

curl -sSO https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
wp --info

echo -e '\n** Fish shell **\n'

mkdir -p /home/vagrant/.config
cp -r /vagrant/tools/fish/ /home/vagrant/.config/fish/
sudo chown -R vagrant:vagrant /home/vagrant/.config
sudo chsh -s /usr/bin/fish
sudo sed -i "s+/home/vagrant:/bin/bash+/home/vagrant:/usr/bin/fish+" /etc/passwd

ln -s /vagrant

echo -e '\n** Done! **\n'
