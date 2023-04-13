Jalankan container postgres menggunakan perintah berikut

```{.bash .copy}
docker run \
-e POSTGRES_DB=exampledb \
-e POSTGRES_USER=exampleuser \
-e POSTGRES_PASSWORD=examplepassword \
--network challenge \
--name mydb \
-d \
postgres
```

Jalankan container naufalafif58/postgres-con-test menggunakan perintah berikut

```{.bash .copy}
docker run \
-e DATABASE_NAME=exampledb \
-e DATABASE_HOST=mydb \
-e DATABASE_USER=exampleuser \
-e DATABASE_PASSWORD=examplepassword \
--network challenge \
--name test-db \
-p 4444:8080 \
-d \
naufalafif58/postgres-con-test
```
