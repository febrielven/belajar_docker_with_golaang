# lightweight container for go
FROM golang:1.16

# update container's packages and install git
# RUN apk update && apk add --no-cache git

# set /app to be the active directory
WORKDIR /go/src/github.com/febrielven/belajar_golang_with_docker

# copy all files from outside container, into the container
COPY . .

# download dependencies
RUN go mod tidy

# build binary
RUN go build -o binary

# set the entry point of the binary
ENTRYPOINT [ "/go/src/github.com/febrielven/belajar_golang_with_docker/binary" ]


