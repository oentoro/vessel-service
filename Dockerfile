FROM alpine:latest

RUN apk add --no-cache \
        libc6-compat
WORKDIR /app

ADD vessel-service /app/vessel-service 

CMD ["./vessel-service"]