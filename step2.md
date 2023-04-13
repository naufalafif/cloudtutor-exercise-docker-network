#### Menghubungkan Container

Pada halaman sebelumnya, Kita telah menjalankan sebuah container menggunakan network dengan nama `utama`. Sekarang mari buat satu container lagi menggunakan network yang tersebut

gunakan perintah berikut

```{.bash .copy}
docker run -d --name test-network --network utama naufalafif58/network-tool
```

Kita dapat memeriksa apakah container sudah terhubung dengan network dengan menjalankan perintah:

```{.bash .copy}
docker network inspect utama
```

Pastikan kedua container `web-server` dan `test-network` berada dalam daftar container yang terhubung

Selanjutnya kita bisa mencoba mengecek apakah kedua sudah terhubung dengan melakukan ping dan curl. gunakan perintah dibawah

ping

```{.bash .copy}
docker exec test-network ping web-server
```

curl

```{.bash .copy}
docker exec test-network curl web-server
```

Kita juga dapat melakukan pengecekan pada port tertentu seperti menggunakan curl pada port tertentu dengan perintah

```{.bash .copy}
docker exec test-network curl web-server:PORT_YANG_DITUJU
```

Berhasil, kita sudah menghubungkan 2 container menggunakan Docker network
Pada halaman selanjutnya kita akan melakukan setup 2 container dengan real usecase
