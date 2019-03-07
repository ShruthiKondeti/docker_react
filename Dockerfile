From node:alpine as buildphase

WORKDIR '/app'

Copy package.json .
Run npm install
Copy . .
Run npm run build


From nginx
Copy --from=buildphase /app/build /usr/share/nginx/html

