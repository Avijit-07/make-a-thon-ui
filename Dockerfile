FROM node:12-alpine3.12

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app
RUN npm run build --dev

EXPOSE 4200

CMD ["npm", "start"]
