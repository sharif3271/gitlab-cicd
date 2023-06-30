FROM node:16.19-slim AS ui-builder
RUN mkdir /src
WORKDIR /src
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine AS ui-webserver
COPY nginx.default.conf /etc/nginx/conf.d/default.conf
COPY --from=ui-builder /src/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
