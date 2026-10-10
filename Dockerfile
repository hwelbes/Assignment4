# Use a Node.js base image
FROM node:16

# Set a working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./

# Install the dependencies with npm install
RUN npm install

# Copy all the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application with the command npm start
CMD ["npm", "start"]