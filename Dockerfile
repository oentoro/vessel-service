FROM alpine:latest

# Security related package, good to have.
RUN apk --no-cache add ca-certificates

# Same as before, create a directory for our app.
RUN mkdir /app
WORKDIR /app

#copy binary
ADD vessel-service /app/vessel-service

# Run the binary as per usual! This time with a binary build in a
# separate container, with all of the correct dependencies and
# run time libraries.
CMD ["./vessel-service"]