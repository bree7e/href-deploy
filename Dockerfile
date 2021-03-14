FROM nginx:1.19
LABEL maintainer="admin@tyapk.ru"
COPY /dist/href-deploy /usr/share/nginx/html
RUN sed -i '/^}/i \ \ \ \ error_page  404 /index.html;' /etc/nginx/conf.d/default.conf
COPY docker-entrypoint.sh /
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
