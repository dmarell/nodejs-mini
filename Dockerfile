FROM node:latest

WORKDIR /server

COPY package.json /server/
RUN npm install

COPY server.js /server/

EXPOSE 9090
CMD ["npm", "start"]