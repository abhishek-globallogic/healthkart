# Use an official Node.js image as the base image
FROM node:23.11.0-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application files to the container
COPY . .

# Expose the port the application will run on
EXPOSE 8080

# Install a simple HTTP server to serve static files
RUN npm install -g http-server

# Command to run the application
CMD ["http-server", "-p", "8080"]