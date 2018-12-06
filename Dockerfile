FROM node:8.10.0

RUN mkdir explorer
ADD . /explorer

WORKDIR /explorer

RUN sed 's/-a localhost -p 8000/-a 0.0.0.0 -p 8000/g' package.json > pkg.json
RUN rm -f package.json
RUN mv pkg.json package.json

RUN npm install
RUN node_modules/.bin/bower install --allow-root

COPY startscript.sh .

EXPOSE 8000

ENTRYPOINT ["/explorer/startscript.sh"]
