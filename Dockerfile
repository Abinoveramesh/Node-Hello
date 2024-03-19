FROM node:14-apache

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install && npm install mysql

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
