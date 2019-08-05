# vessel-service/Dockerfile
FROM ubuntu:latest

RUN mkdir /app
WORKDIR /app
ADD vessel-service /app/vessle-service 

CMD ["./vessel-service"]