FROM node:18-alpine

WORKDIR /app

COPY server.js .

# Install any dependencies (if you had a package.json, but it's optional here)
# RUN npm install

# Expose the port (optional but recommended for documentation)
EXPOSE 10000

# Start the server
CMD ["node", "server.js"]
