FROM oven/bun:slim

COPY ./index.html /app/
COPY ./styles.css /app/
COPY ./server.ts /app/
COPY ./curly-brackets.png /app/

WORKDIR /app

EXPOSE $SERVER_PORT

CMD ["bun", "server.ts"]
