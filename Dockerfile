FROM alpine:latest

RUN apk add --no-cache \
        libc6-compat

RUN mkdir /app
WORKDIR /app

ADD vessel-service /app/vessel-service 

CMD ["./vessel-service"]