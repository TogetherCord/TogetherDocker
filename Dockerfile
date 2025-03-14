
FROM node:20.10.0


WORKDIR /usr/src/app


COPY package*.json ./


RUN npm install

COPY . .

EXPOSE 8080

ARG TOKEN
ENV TOKEN=$TOKEN

CMD [ "node", "index.js" ]