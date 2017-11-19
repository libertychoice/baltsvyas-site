# baltsvyas-site
./mysql - database backup
./export - WordPress export file
./src - WordPress template sources

To make changes please read this link:
https://rustycrate.ru/%D1%80%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%B0/2016/03/07/contributing.html

For installing new version:
1. For export and import MySQL use:
  https://zalinux.ru/?p=714
  

2. Copy files in ./src directory to /var/www/html/

3. Execute command: service apache2 restart


TODO:
1. Add sending to email (install sendmail)
2. Remove account and logout button
3. Add fast links to categories in top menu