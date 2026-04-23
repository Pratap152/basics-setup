#basic httpd for amazon linux server
#! /bin/bash
sudo  sudo yum update -y
sudo yum install httpd
sudo systemctl enable httpd
sudo systemctl restart httpd
sudo systemctl status httpd
# edit inbound rules make sure custom tcp port:80 anywhere
sudo systemctl restart httpd
sudo systemctl status httpd
#copy the publicip:80 and try to access  -----> it shows -->< It works! >


#while using any other application like tooplate templates ....
#! /bin/bash
sudo  sudo yum update -y
sudo yum install httpd
sudo systemctl enable httpd
sudo systemctl restart httpd
sudo systemctl status httpd
sudo wget https://www.tooplate.com/zip-templates/2103_central.zip
ls    #--->2103_central.zip
unzip 2103_central.zip 
ls      #--->2103_central.zip     2103_central
sudo cp -r 2103_central/* /var/www/html/
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html
sudo systemctl restart httpd
sudo systemctl status httpd  
#copy the publicip:80 and try to access  -----> it shows --> tooplate webpage
