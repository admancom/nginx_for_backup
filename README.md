# nginx_for_backup
Для проекта backup

Укажите свой домен в 
ENV DOMEN=s2.bkuper.ru

Создайте директорию 
/home/data/res

Директория /home/data/res будет корневой директорией сайта

Создать проект
./start_nginx.sh

Удалить проект 
./delete_nginx.sh

В html-directory находится заглушка index.html

В letsencrypt_renew.sh
замените domen.ru на свой домен

