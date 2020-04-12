FROM node:10

WORKDIR /home/node/app
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
COPY package.json .
COPY . /home/node/app
RUN npm install
EXPOSE 3000
CMD ["npm" , "start"]
