# ref askai https://gemini.google.com/share/f630517f0fec
FROM node:24-alpine

EXPOSE 3000

# Logic: Parse the URL, extract 'name', and return a greeting
CMD ["node", "-e", "http.createServer((req, res) => { \
  const url = new URL(req.url, 'http://localhost'); \
  const name = url.searchParams.get('name') || 'Guest'; \
  res.end(`Hello ${name}`); \
}).listen(3000)"]
