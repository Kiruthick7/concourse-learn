# Use an official lightweight Node.js image as the base image
FROM node:18-alpine

# Upgrade npm to a version that fixes CVE-2024-21538 (at least 7.0.5)
RUN npm install -g npm@7.0.5

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application source code into the container
COPY . .

# Expose the port your app runs on (if applicable)
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
