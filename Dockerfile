FROM node:10-alpine
EXPOSE 8080
COPY . /app
COPY entry-point.sh /usr/local/bin/entry-point.sh
RUN chmod 755 /usr/local/bin/entry-point.sh
WORKDIR /app/src
RUN npm install
ENTRYPOINT ["entry-point.sh"]
