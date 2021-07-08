FROM node:16.4.2-alpine

RUN mkdir /app
WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

ENV NODE_ENV=production

RUN npm install

COPY app.js /app

EXPOSE 3000

CMD node app.js
