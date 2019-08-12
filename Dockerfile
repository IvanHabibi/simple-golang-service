FROM golang:1.11 

RUN go get -v github.com/gorilla/mux && go get -v github.com/gorilla/handlers && go get -v go.mongodb.org/mongo-driver/bson && go get -v go.mongodb.org/mongo-driver/bson/primitive && go get -v go.mongodb.org/mongo-driver/mongo && go get -v go.mongodb.org/mongo-driver/mongo/options && go get -v github.com/joho/godotenv

RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go build -o main .
CMD ["/app/main"]
