FROM nginx:1.22.1
COPY nginx.config /etc/nginx/conf.d/default.conf
COPY /dist/git-test/* /usr/share/nginx/html
# COPY nginx.config /etc/nginx/conf.d/default.conf
# COPY --from=node /app/dist/git-test /usr/share/nginx/html