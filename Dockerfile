FROM node:18-alpine

# Create a simple server script
RUN echo "const http = require('http');" \
    "const port = process.env.PORT || 10000;" \
    "const server = http.createServer((req, res) => {" \
    "  res.statusCode = 200;" \
    "  res.setHeader('Content-Type', 'text/plain');" \
    "  res.end('OK');" \
    "});" \
    "server.listen(port, () => {" \
    "  console.log('Server running on port', port);" \
    "});" > server.js

# Expose the port
EXPOSE 10000

CMD ["node", "server.js"]
