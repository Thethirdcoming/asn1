# Use Node.js v14 as the base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Expose port 5000
EXPOSE 5000

# Start the server
CMD [ "npm", "start" ]
