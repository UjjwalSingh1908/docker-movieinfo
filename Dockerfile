# Use an official lightweight Node.js runtime as a base image
FROM node:14-slim

# Set the working directory in the container
WORKDIR /DOCKER-MOVIEINFO-1

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application files to the working directory
COPY . .

# Expose the port your app is running on (e.g., 80)
EXPOSE 80

# Define the command to start your application
CMD [ "node", "server.js" ]
