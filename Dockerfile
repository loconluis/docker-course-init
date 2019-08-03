# Specify base image
FROM node:10-alpine

# Specify a working directory
WORKDIR /usr/app

# install dependencies
# this line use cache
COPY ./package.json ./
RUN npm install

# install dependencies
COPY ./ ./

# Default command
CMD [ "npm", "start" ]