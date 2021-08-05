FROM        node
RUN         npm install
CMD         [ "node", "server.js" ]
