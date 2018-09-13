FROM nginx 1.13
MAINTAINER Fletcher Barratt <barrfj2@student.op.ac.nz>
COPY flaskapp.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

resolver 127.0.0.11 valid=1s;

server {
set $alias "flaskapp";
location / {
proxy_set_header Host $host;
proxy_set_header X-Forwarded-Proto $scheme;
proxy_pass http://$alias:5000;
}
listen 80;
}

