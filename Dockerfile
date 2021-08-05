FROM        node
RUN         mkdir /app
COPY        server.js /app
COPY        package.json /app
WORKDIR     /app
RUN         npm install
CMD         [ "node", "server.js" ]
