FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --production

# Bundle app source
COPY bin /usr/src/app
COPY public /usr/src/app
COPY routes /usr/src/app
COPY views /usr/src/app
COPY app.js /usr/src/app

EXPOSE 3000
CMD [ "npm", "start" ]
