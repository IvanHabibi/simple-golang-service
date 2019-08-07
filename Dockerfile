FROM golang:latest 

RUN go get github.com/gorilla/mux
RUN go get github.com/gorilla/handlers
RUN go get go.mongodb.org/mongo-driver/bson
RUN go get go.mongodb.org/mongo-driver/bson/primitive
RUN go get go.mongodb.org/mongo-driver/mongo
RUN go get go.mongodb.org/mongo-driver/mongo/options
RUN go get github.com/joho/godotenv

#FROM base-image
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go build -o main .
CMD ["/app/main"]
