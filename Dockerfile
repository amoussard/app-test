FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --production

# Bundle app source
COPY bin /usr/src/app/bin
COPY public /usr/src/app/public
COPY routes /usr/src/app/routes
COPY views /usr/src/app/views
COPY app.js /usr/src/app

EXPOSE 3000
CMD [ "npm", "start" ]
