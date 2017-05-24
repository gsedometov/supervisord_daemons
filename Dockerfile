FROM nginx:alpine

RUN apk update \
  && apk add python3 supervisor
  
COPY supervisord.conf /etc/supervisord.conf
COPY entrypoint.sh /bin/entrypoint.sh
COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["sh", "/bin/entrypoint.sh"]
