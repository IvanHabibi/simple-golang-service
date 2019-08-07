# simple-golang-service


pre req : terinstall mongodb yang running pada port 27017

Step :

1. git clone https://github.com/IvanHabibi/simple-golang-service.git

2. install golang, dapat menggunakan tutor ini: https://golang.org/doc/install

3. jalankan command go run main.go untuk development

4. jika sudah selesai gunakan command go go build -o main, hasil build akan muncul pada GOBIN

5. jalankan hasil build


==================================================================================================

alternatif: menggunakan docker (jika tidak mau install golang):

1. git clone https://github.com/IvanHabibi/simple-golang-service.git

2. docker build -t golang-service . (build container)

3. docker run --network="host" -p 7000:7000 -t golang-service (menjalankan container)

====================================================================================================

configuration:

ubah pada file .env untuk mengubah port dan url mongo DB
default:

PORT=:7000
CONN_MONGO=mongodb://localhost:27017

====================================================================================================

REST API Specification :

header : content-type: application/json

GET http://localhost:7000/person/{id} (get specific person by id)

GET http://localhost:7000/people (get semua data person)

POST http://localhost:7000/person (membuat data person)

Body:
{
    firstname: 'ivan',
    lastname: "habibi
}

POST http://localhost:7000/person/{id} (membuat data person)

Body:
{
    firstname: 'ivan',
    lastname: "habibi
}

delete http://localhost:7000/person/{id} (hapus person by id)