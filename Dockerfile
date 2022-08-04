FROM node:16

WORKDIR /usr/src/

COPY package.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]

EXPOSE 3000:3000