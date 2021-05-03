FROM nginx:1.20.0

COPY build/* /app
RUN rm -f /etc/nginx/nginx.conf && rm -f /etc/nginx/conf.d/*
COPY nginx.conf.tmpl /etc/nginx/nginx.conf.tmpl
COPY entrypoint /entrypoint

ENTRYPOINT ["/entrypoint"]
