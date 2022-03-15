FROM golang:1.16-alphine
WORKDIR /app
ADD . .
RUN go.mod download
EXPOSE 8081
RUN go build -o /app
CMD ["/app"]
