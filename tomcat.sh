#for Amazon linux server
yum install java-17-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.45/bin/apache-tomcat-10.1.45.tar.gz
tar -zxvf apache-tomcat-10.1.45.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-10.1.45/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-10.1.45/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-10.1.45/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-10.1.45/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-10.1.45/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-10.1.45/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-10.1.45/webapps/manager/META-INF/context.xml
sh apache-tomcat-10.1.45/bin/startup.sh


#for ubuntu aws server
#check java installed or not, if not install
java --version
cd /opt 
sudo mkdir tomcat 
cd tomcat sion

wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.45/bin/apache-tomcat-10.1.45.tar.gz
sudo tar -xvzf apache-tomcat-10.1.24.tar.gz 
sudo mv apache-tomcat-10.1.24 tomcat10 
cd tomcat10 
sudo ./bin/startup.sh
