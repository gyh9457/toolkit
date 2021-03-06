FROM node:12.20.0-alpine

RUN apk add --no-cache tzdata
ENV TZ Asia/Shanghai

RUN apk add --no-cache bash

RUN apk add --no-cache git

RUN npm config set registry https://registry.npm.taobao.org/

ENV YARN_VERSION 1.16.0

RUN yarn policies set-version $YARN_VERSION