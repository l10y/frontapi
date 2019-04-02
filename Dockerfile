FROM node:11.8.0

ADD package.json ./

RUN yarn install
# RUN ./node_modules/.bin/webpack --config ./webpack.config.dev.js

ADD ./dist/server.js ./

EXPOSE 3000

CMD ["node", "./server.js"]
