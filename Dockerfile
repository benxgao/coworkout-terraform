FROM node:alpine3.16 AS base
RUN apk add --no-cache npm
WORKDIR /root/app
COPY functions/package.json .

FROM base AS dependencies
RUN npm set progress=false && npm config set depth 0
RUN npm i --only-production
RUN cp -R node_modules prod_node_modules
RUN npm i

FROM dependencies AS test
COPY . .
RUN npm run test

FROM base AS final
COPY --from=dependencies /root/app/prod_node_modules ./node_modules
COPY . .
RUN cd functions
RUN ls -al
EXPOSE 3000
ENTRYPOINT [ "npm", "start"]