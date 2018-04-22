FROM node:9.11.1-alpine

RUN npm install -g nodemon

WORKDIR /app

EXPOSE 3000

CMD ["node"]