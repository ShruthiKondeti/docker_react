From node:alpine as builder

WORKDIR '/app'

Copy package.json .
Run npm install
Copy . .
Run npm run build


From nginx
Copy --from=builder /app/build /usr/share/nginx/html

