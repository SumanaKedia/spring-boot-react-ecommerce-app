# Base Package
FROM node:14



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
RUN npm install

# -g npm

# Bundle app source
COPY . .

# Add a script to set the environment variable dynamically - Sumana
COPY client/set-env.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/set-env.sh

#RUN yarn install

# Initiate npm start - changed by Sumana
CMD ["sh", "-c", "set-env.sh && npm", "run-script", "start_docker_dev" ]
