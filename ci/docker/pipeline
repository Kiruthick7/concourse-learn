# Use an official lightweight Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application source code into the container
COPY . .

# (Optional) Build the application if needed
# RUN npm run build

# Expose the port your app runs on (if applicable)
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
