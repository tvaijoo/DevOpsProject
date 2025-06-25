FROM node

ENV MONGO_DB_USERNAME=admin \
    MONDO_DB_PWD=pass

RUN mkdir -p testapp

WORKDIR /testapp

EXPOSE 5050

COPY . .

CMD ["node", "server.js"]