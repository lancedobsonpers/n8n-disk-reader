const http = require('http');

const port = process.env.PORT || 10000;
const host = '0.0.0.0';

const server = http.createServer((req, res) => {
  console.log('Request received:', req.url);
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello from Render!');
});

server.listen(port, host, () => {
  console.log('Server running on http://' + host + ':' + port);
});
