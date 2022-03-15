FROM golang:1.16-alpine

WORKDIR /app

ADD go.mod .
ADD go.sum .

RUN go mod download

COPY *.go ./

EXPOSE 8080

RUN go build -o /dummy-go-app

CMD ["/dummy-go-app"]
