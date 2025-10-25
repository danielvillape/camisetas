FROM nginx:alpine

LABEL maintainer="Daniel Villa <danielvilla@example.com>"

RUN rm -rf /usr/share/nginx/html/*

COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
