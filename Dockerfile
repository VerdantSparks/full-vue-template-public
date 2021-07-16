FROM node:lts-alpine as builder

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY ./package*.json ./yarn.lock ./
RUN yarn install

COPY . .
RUN yarn build


FROM node:lts-alpine as host

# install simple http server for serving static content
RUN yarn global add http-server

WORKDIR /app

COPY --from=builder /app/dist .

EXPOSE 8080
ENTRYPOINT [ "http-server", "." ]