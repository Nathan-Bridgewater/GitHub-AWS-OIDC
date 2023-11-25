FROM node:18-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node package.json .

COPY --chown=node:node package-lock.json .

RUN npm install

COPY --chown=node:node index.js .

USER node

EXPOSE 3000

CMD [ "node", "index.js" ]
