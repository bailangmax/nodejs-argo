FROM node:26-alpine
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY --chown=node:node . .
RUN chown node:node /app

USER node
CMD ["node", "index.js"]
