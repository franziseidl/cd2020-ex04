FROM golang:alpine3.20

# Set maintainer label: maintainer=[YOUR-EMAIL]


# Set working directory: `/src`

WORKDIR /src


# Copy local file `main.go` to the working directory

COPY main.go .


# List items in the working directory (ls)

RUN ls -l

# Build the GO app as myapp binary and move it to /usr/

EXPOSE 8888

# Run the service myapp when a container of this image is launched

ENTRYPOINT go run main.go
