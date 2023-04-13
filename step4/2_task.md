Hubungkan dua container dengan menggunakan image `postgres` dan `naufalafif58/postgres-con-test` pada network `challenge`. Atur environment variables pada kedua container agar saling terhubung, dan buka port 8080 pada container `naufalafif58/postgres-con-test` ke port 4444 pada host.

Kedua image menerima beberapa environment variables seperti pada keterangan dibawah

`naufalafif58/postgres-con-test` menerima variable DATABASE_NAME, DATABASE_USER, DATABASE_PASSWORD, DATABASE_HOST

`postgres` menerima variable POSTGRES_PASSWORD, POSTGRES_USER, POSTGRES_DB
