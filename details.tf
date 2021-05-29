  ami = "ami-0cd4900b43e25799c"

  access_key = "AKIATJB6YJUVWAMJK7ED"
  secret_key = "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"


  provider "aws" {
    region     = "ap-southeast-1"
    access_key = "AKIATJB6YJUVWAMJK7ED"
    secret_key = "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"
  }

  resource "aws_instance" "myec2"{
    ami = "ami-0cd4900b43e25799c"
    instance_type = "t2.micro"
  }


AKIATJB6YJUVTOBZZ5QX
Gy4I92wUQQjD86BSZoW33HillAPTQQttUt+1EMeD

#!/bin/bash
sudo yum install httpd php php-mysql -y
cd /var/www/html
sudo wget https://wordpress.org/wordpress-5.1.1.tar.gz
sudo tar -xzf wordpress-5.1.1.tar.gz
sudo cp -r wordpress/* /var/www/html/
sudo rm -rf wordpress
sudo rm -rf wordpress-5.1.1.tar.gz
sudo chmod -R 755 wp-content
sudo chown -R apache:apache wp-content
sudo service httpd start
sudo chkconfig httpd on
