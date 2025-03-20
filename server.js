const http = require('http');

const port = process.env.PORT || 10000;
const host = '0.0.0.0';

console.log(`[INFO] Starting server...`);
console.log(`[INFO] Host: ${host}`);
console.log(`[INFO] Port: ${port}`);

const server = http.createServer((req, res) => {
  const now = new Date().toISOString();
  console.log(`[${now}] ${req.method} ${req.url}`);

  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('OK');
});

server.listen(port, host, () => {
  const now = new Date().toISOString();
  console.log(`[${now}] Server running on http://${host}:${port}`);
});
