FROM node:18-alpine
WORKDIR /app
COPY package.json ./app
RUN yarn install
COPY . .
EXPOSE 80
CMD [ "yarn", "start" ]