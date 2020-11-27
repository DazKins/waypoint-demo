FROM node:12-alpine3.9

COPY index.js ./
COPY package*.json ./

RUN npm install --production

EXPOSE 80
CMD npm run start
