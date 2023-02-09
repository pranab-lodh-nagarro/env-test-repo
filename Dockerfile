FROM node:18.12.0 as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
FROM nginx:1.22.1
COPY nginx.config /etc/nginx/conf.d/default.conf
COPY --from=node /app/dist/git-test /usr/share/nginx/html