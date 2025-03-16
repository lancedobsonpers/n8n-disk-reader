FROM node:18-alpine

# Write a minimal HTTP server
RUN echo "const http = require('http'); \
const port = process.env.PORT || 10000; \
const host = '0.0.0.0'; \
const server = http.createServer((req, res) => { \
  res.statusCode = 200; \
  res.setHeader('Content-Type', 'text/plain'); \
  res.end('OK'); \
}); \
server.listen(port, host, () => { \
  console.log('Server running on http://' + host + ':' + port); \
});" > server.js

# Start the server
CMD ["node", "server.js"]
