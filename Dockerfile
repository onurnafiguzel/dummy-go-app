FROM golang:1.16-alpine
WORKDIR /app
ADD go.mod .
ADD go.sum .
RUN go.mod download
EXPOSE 8081
RUN go build -o /app
CMD ["/app"]
