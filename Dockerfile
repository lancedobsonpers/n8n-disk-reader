# Use Node.js alpine as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the server.js file into the container
COPY server.js .

# Expose the port that the app runs on (important for Render)
EXPOSE 10000

# Start the server
CMD ["node", "server.js"]
