#!/bin/bash

echo "Atualizando o servidor e incluindo aplicações."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos do site."

cd /tmp
wget https://github.com/ChatBot-Zone/ChatBot-Zone.github.io/archive/refs/heads/main.zip
unzip main.zip
cd ChatBot-Zone.github.io-main
cp -R * /var/www/html/