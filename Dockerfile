# Source: https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
# Using node base image
FROM node:16

# Creating app directory
WORKDIR /usr/src/app

# Creating app dependencies in the image
COPY package*.json ./
RUN npm ci --only=production
# you can also use npm install for non prod

# Copy App Source Files
COPY . .

#Exposing port 8808
EXPOSE 8808

# Run the app
CMD [ "node", "server.js" ]
