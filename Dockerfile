FROM node:17-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm i y-websocket@v1.3.18

ARG HOST=0.0.0.0
ENV HOST=${HOST}

ARG PORT=1234
ENV PORT=${PORT}

EXPOSE 1234

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

