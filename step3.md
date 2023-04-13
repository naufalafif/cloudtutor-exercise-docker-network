#### Menjalankan PHPMyadmin dan MYSQL Database

Langkah pertama, kita perlu menjalankan container MySQL menggunakan network `utama` yang telah dibuat. Gunakan perintah berikut

```{.bash .copy}
docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=password --network utama -d mysql:latest
```

Penjelasan dari perintah di atas adalah sebagai berikut:

- docker run: Menjalankan container baru
- --name my-mysql: Memberikan nama 'my-mysql' pada container yang akan dibuat
- -e MYSQL_ROOT_PASSWORD=password: Menentukan password root user MySQL dengan 'password'
- -d: Menjalankan container di background
  mysql:latest: Nama image Docker yang akan digunakan untuk membuat container

Langkah Selanjutnya adalah menjalankan container phpmyadmin. Gunakan perintah berikut

```{.bash .copy}
docker run --name my-phpmyadmin -d -e PMA_HOST=my-mysql -p 80:80 --network utama -e PMA_ABSOLUTE_URI=https://#ID#.host.cloudtutor.io phpmyadmin/phpmyadmin
```

#### Mengecek Halaman PHPMyadmin

Buka url berikut pada tab browser Anda

```{.bash .copy}
https://#ID#.host.cloudtutor.io
```
