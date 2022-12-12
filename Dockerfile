FROM python:alpine3.16
COPY * /var/www
WORKDIR /var/www
CMD ["sh", "/var/www/run.sh"]
