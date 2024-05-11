* Start-Service msiscsi
* Set-Service msiscsi -startuptype "automatic”
* Enable-NetFirewallRule -DisplayGroup "Remote Administration
* Add-WindowsCapability -Online -Name ServerCore.AppCompatibility
* diskmgmt.msc or diskmgmt
* explorer + notepad for html
* Computer > Administrative Templates > Windows Components > Windows Copilot and enable “Turn off Windows Copilot"

* -------debian-------

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
* sudo useradd -d /var/ftp/files -s /sbin/nologin arendaja
* sudo passwd arendaja
* sudo systemctl restart vsftpd

* -----nginx index listing for ftp-----
* sudo usermod -a -G arendaja www-data
* sites-enabled/default
* ---------------------------------
    location / {
        autoindex on;
    }
* ---------------------------------
* --------ssh-keygen-------
* ssh-keygen -t ed25519

