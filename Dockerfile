FROM node:6
WORKDIR /prerenderer
ADD package.json package.json
RUN npm install
ADD . .
ENV PORT 80
EXPOSE 80
CMD node ./server.js
