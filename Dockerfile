FROM node:18.13.0

WORKDIR /app

COPY package.json .
RUN npm i

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["npm", "run", "preview"]