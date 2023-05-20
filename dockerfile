FROM httpd:alpine

RUN apk update
RUN apk upgrade

RUN apk add git

RUN mkdir /app
WORKDIR /app
COPY ./script.sh /app/script.sh
RUN chmod u+x /app/script.sh

CMD sh /app/script.sh