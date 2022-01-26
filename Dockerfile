# DEFINE THE ENVIRONMENT
FROM node:alpine3.11
# WORKING DIR
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
# EXPOSE THE PORT 80
EXPOSE 80
# RUN THE COMMAND TO START THE APP...
CMD [ "node", "server.js" ]
