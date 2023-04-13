#### Apa Itu Docker Network

Bayangkan jika Docker adalah sebuah tumpukan kotak yang dapat menampung berbagai aplikasi di dalamnya. Nah, Docker network adalah seperti sebuah jalan raya yang menghubungkan kotak-kotak tersebut. Dengan adanya Docker network, aplikasi yang dijalankan di dalam kotak-kotak tersebut bisa saling berbicara dan bertukar data dengan aman dan terisolasi dari aplikasi yang berada di kotak lain atau dari komputer host yang menjalankan Docker. Jika ingin membuat beberapa container, kita bisa membuat network khusus yang menghubungkan container-container tersebut sehingga mereka bisa berinteraksi dengan aman dan tanpa gangguan dari aplikasi atau komputer host lainnya yang tidak terkait.

#### Mencoba Docker Network

Langkah pertama adalah membuat Docker network. Untuk membuat network, jalankan perintah berikut:

```{.bash .copy}
docker network create utama
```

Ganti <utama> dengan nama yang inginkan untuk network kita. Misalnya, jika ingin memberi nama network "kedua", maka perintahnya akan menjadi:

```{.bash .copy}
docker network create kedua
```

Setelah network berhasil dibuat, kita dapat melihat daftar network yang ada dengan menjalankan perintah berikut:

```{.bash .copy}
docker network ls
```

Selanjutnya, kita dapat menggunakan network yang sudah dibuat untuk menjalankan container. Untuk melakukannya, tambahkan parameter --network pada perintah docker run, seperti contoh berikut:

```{.bash .copy}
docker run -d --name web-server --network utama nginx
```

Perintah ini akan menjalankan container nginx dengan nama "web-server" dan menghubungkannya ke network "utama".

Kita dapat memeriksa apakah container sudah terhubung dengan network dengan menjalankan perintah:

```{.bash .copy}
docker network inspect utama
```

Perintah ini akan menampilkan informasi detail mengenai network yang ada, termasuk daftar container yang terhubung ke network tersebut. berikut contoh outputnya

```{.bash}
[
    {
        "Name": "utama",
        "Id": "5f83e509cb7b9c917b34cdbb13f45da3709939a226a0b05145d5fc567b756fd5",
        "Created": "2023-03-25T01:59:19.544051795Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "7fdebe365ab936a87a0713ffd35b4cd546563ed77b27ba650d567174afd64071": {
                "Name": "web-server",
                "EndpointID": "53fe5f7cb5cd9b93f11555cbfe0faaad3b04e08752938bdb232f96eefce5a0eb",
                "MacAddress": "02:42:ac:12:00:02",
                "IPv4Address": "172.18.0.2/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]
```

Kita telah berhasil menjalankan container menggunakan network yang kita buat. Pada halaman selanjutnya kita akan mencoba menghubungkan dua container
