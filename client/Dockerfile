# Base Package
FROM node:14.21.3

MAINTAINER Sumana Kedia

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./client/package*.json ./


# RUN npm install -g npm-check-updates
# RUN ncu
# RUN ncu -u
RUN npm install npm@v6.14.18

# -g npm

# Bundle app source
COPY . .

#RUN yarn install

# Initiate npm start
CMD [ "npm", "run-script", "start_docker_dev" ]
