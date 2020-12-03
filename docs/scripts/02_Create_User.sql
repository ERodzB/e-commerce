CREATE USER 'mysqlUser'@'%' IDENTIFIED WITH mysql_native_password BY 'p@ssw0rd';
GRANT ALL ON foodService.* TO 'mysqlUser'@'%';