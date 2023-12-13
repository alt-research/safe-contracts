FROM node:18.15.0-slim AS builder
WORKDIR /app
COPY . .
RUN apt update && apt install git -y
RUN yarn
RUN yarn build
