FROM node:20

WORKDIR /my-app

COPY welcom-react/package*.json ./
RUN npm install

COPY welcom-react/ .
RUN npm run build

CMD ["npm", "start"]
