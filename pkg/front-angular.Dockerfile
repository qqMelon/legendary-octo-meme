#FROM node:latest as node
FROM node:lts-alpine as node

WORKDIR /app

COPY . .

RUN npm install -g @angular/cli
RUN npm install

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]

# sudo chown -R $USER:$(id -gn $USER) ./*
