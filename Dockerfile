FROM nginx 1.13
MAINTAINER Fletcher Barratt <barrfj2@student.op.ac.nz>
COPY flaskapp.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

