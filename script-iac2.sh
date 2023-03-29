#!/bin/bash

#Instalação de atualizações
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

#Instalação do apache
apt-get install apache2 -y

#Instalação do Unzip
apt-get install unzip -y

"Baixando e copiando arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

