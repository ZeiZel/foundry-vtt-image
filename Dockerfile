FROM node:23-alpine

ARG DOWNLOAD_URL

WORKDIR /home/foundry

RUN apk add --no-cache wget unzip

RUN \
    if [ -n "$DOWNLOAD_URL" ]; then \
    mkdir -p app && \
    cd ./app && \
    wget -O foundryvtt.zip "$DOWNLOAD_URL" && \
    unzip foundryvtt.zip && \
    rm foundryvtt.zip; \
    fi

RUN mkdir -p /home/foundry/data

COPY ./config/* /home/foundry/data/Config

EXPOSE 30000

CMD ["node", "/home/foundry/app/main.js", "--dataPath=/home/foundry/data"]
