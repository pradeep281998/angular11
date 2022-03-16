FROM node:12-alpine as node

RUN mkdir  /home/node/app

WORKDIR /home/node/app

COPY package*.json ./


RUN npm install

COPY . .

RUN  npm run  build --prod

#serving to nginx

FROM nginx:latest



COPY --from=node  /home/node/app/dist/EXAM  /usr/share/nginx/html


EXPOSE 80



