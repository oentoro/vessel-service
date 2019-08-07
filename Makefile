build:
	protoc -I. --go_out=plugins=micro:. \
		proto/vessel/vessel.proto
	# go build
	# docker build -t vessel-service .
run:
	docker run -p 50052:50051 -e MICRO_SERVER_ADDRESS=:50051 vessel-service -d
clean:
	rm vessel-service