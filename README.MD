* Start-Service msiscsi
* Set-Service msiscsi -startuptype "automatic”
* Enable-NetFirewallRule -DisplayGroup "Remote Administration"
* Add-WindowsCapability -Online -Name ServerCore.AppCompatibility
* diskmgmt.msc or diskmgmt
* explorer + notepad for html
* Computer > Administrative Templates > Windows Components > Windows Copilot and enable “Turn off Windows Copilot"

* -------debian-------
* ------wordpress-----
* sudo apt install php libapache2-mod-php php-mysql
* sudo systemctl restart apache2
* tar xzvf latest.tar.gz
* sudo chown -R www-data:www-data /var/www/html/harukontor.eesti.asi
* ------wp database-----
* sudo mysql -uroot
* CREATE DATABASE wordpress;
* CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'Passw0rd!';
* GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';
* FLUSH PRIVILEGES;

* --------ftp---------
* sudo apt install vsftpd
* sudo nano /etc/vsftpd.conf
* ---------------------------------
* listen=YES
* anonymous_enable=NO
* local_enable=YES
* write_enable=YES
* chroot_local_user=YES
* allow_writeable_chroot=YES
* local_root=/var/ftp/files
* ---------------------------------
* sudo mkdir -p /var/ftp/files
* sudo chown nobody:nogroup /var/ftp/files
* sudo chmod a-w /var/ftp/files
* sudo useradd -d /var/ftp/files -s /sbin/bash arendaja
* sudo passwd arendaja
* sudo systemctl restart vsftpd

* -----apache index listing for ftp-----
* sudo usermod -a -G arendaja www-data
* nano /etc/apache2/sites-available/files.harukontor.##.eesti.asi.conf
* ---------------------------------
* <VirtualHost *:80>
*     ServerName files.harukontor.##.eesti.asi
*    DocumentRoot /var/ftp/files
*
*    <Directory /var/ftp/files>
*        Options +Indexes
*        IndexOptions FancyIndexing
*        Require all granted
*    </Directory>
* </VirtualHost>
* ---------------------------------
* sudo a2ensite files.harukontor.##.eesti.asi.conf
* --------ssh-keygen-------
* ssh-keygen -t ed25519

