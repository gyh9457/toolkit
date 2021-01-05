FROM node:12.20.0-alpine

RUN apk add --no-cache tzdata
ENV TZ Asia/Shanghai

RUN apk add --no-cache bash

RUN apk add --no-cache git

RUN npm config set registry https://registry.npm.taobao.org/

RUN npm install yarn -g

RUN npm install @gem-mine/cli -g