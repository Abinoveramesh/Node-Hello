FROM node:14-apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install && npm install mysql

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
