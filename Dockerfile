# vessel-service/Dockerfile
FROM ubuntu:latest

RUN apk --no-cache add ca-certificates

RUN mkdir /app
WORKDIR /app
COPY --from=builder /app/vessle-service .

CMD ["./vessel-service"]