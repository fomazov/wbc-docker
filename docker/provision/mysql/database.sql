# create databases
CREATE DATABASE IF NOT EXISTS `wbc_api` CHARACTER SET utf8mb4;

# create root user and grant rights
CREATE USER 'vagrant'@'%' IDENTIFIED BY 'vagrant';
GRANT ALL ON *.* TO 'vagrant'@'%';

CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'vagrant';
GRANT ALL ON *.* TO 'vagrant'@'localhost';
