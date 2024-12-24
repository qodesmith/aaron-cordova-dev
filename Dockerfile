FROM oven/bun:slim

ARG DATE

COPY ./index.html /app/
COPY ./styles.css /app/styles_${DATE}.css
COPY ./server.ts /app/
COPY ./curly-brackets.png /app/

# Use sed to replace values in the copied files
RUN sed -i "s/styles\.css/styles_${DATE}\.css/g" /app/index.html
RUN sed -i "s/styles\.css/styles_${DATE}\.css/g" /app/server.ts

WORKDIR /app

EXPOSE $SERVER_PORT

CMD ["bun", "server.ts"]
