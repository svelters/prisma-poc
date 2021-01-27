FROM node:15-alpine as base

WORKDIR /app

##############################################

FROM base as dev

ENV NODE_ENV development
USER node

COPY . /app

CMD ["yarn", "dev"]
