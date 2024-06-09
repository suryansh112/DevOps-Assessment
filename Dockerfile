FROM node:latest as build

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY . /home/node/app

RUN npm install

RUN npx nx build pt-notification-service

RUN cp /home/node/app/dist/apps/pt-notification-service/main.js /home/node/app

EXPOSE 3000

CMD [ "node", "main.js" ]
