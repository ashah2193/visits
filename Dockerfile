# Base Image
FROM node:alpine

# Working Directory in container
WORKDIR '/app'

# install dependency
COPY ./package.json ./
RUN npm install

# coopy remaining files
COPY ./ ./

# startup command
CMD [ "npm", "start" ]