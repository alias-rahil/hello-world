FROM node:alpine

COPY package.json package-lock.json ./

RUN npm ci --only=production

COPY . .

ENTRYPOINT [ "node", "index.js" ]