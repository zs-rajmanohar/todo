FROM        node
RUN         mkdir /app
COPY        . /app/
# COPY        server.js /app
# COPY        package.json /app
WORKDIR     /app
RUN         npm install
ENV         SERVER_PORT=8080
CMD         [ "node", "server.js" ]
