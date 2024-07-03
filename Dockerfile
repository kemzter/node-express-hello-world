FROM node:lts-slim

COPY . /home/node/app
WORKDIR /home/node/app
EXPOSE 3000

RUN <<EOF
npm install
EOF

COPY node_modules /home/node/app/node_modules

CMD ["npm", "start"]