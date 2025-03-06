# Tutorial 4 - Basic 2D Level Design

## Proses Pengerjaan: Level Baru

Pertama saya membuat `Level2` (hasil duplikat dari `Level1`) dan mengganti `TileSet` menggunakan spritesheet bertema pasir.
`TileSet` yang baru tersebut dikonfigurasi paint physics layernya, dan kemudian menghapus Paint TileMap yang lama dengan painting TileMap baru.
Setelah selesai menggambar layout level, saya mengubah lokasi "Star" atau objektif ke lokasi baru.

Untuk rintangan baru, saya membuat scene `Bee` (duplikat dari `Fish`) dan mengubah spritenya menjadi lebah.
Kemudian saya meletakkan Spawner di level baru dan mengubah `Obstacle` menjadi scene `Bee` tersebut.

## Proses Pengerjaan: Polishing

Untuk polishing, saya melakukan:

- Mengubah sprite objektif (untuk pindah level) menjadi Star
- Menyesuaikan Physics Layer painting untuk tiap tile di `TileSet`
- Mengubah limit di objek camera sehingga pemain hanya dapat melihat *intended playable area*
- Menambahkan background di `Level1` dan `Level2`
- Menyesuaikan gambar di `LoseScreen` dan `WinScreen` supaya fit di window playtest
- Mengubah `Spawner` dari instance menjadi Scene
- Mengubah logic `Spawner` sehingga bisa dikostumasi `range` dan `interval`nya
- Memberi variabel tambahan untuk scene `Spawner` sehingga bisa dikostumasi untuk tiap instance:
  - `obstacle`: scene yang akan diinstansiasi (spawn)
  - `spawnRange`: deviasi range spawn horizontal yang dapat dipilih secara random
  - `minInterval`: interval minimum antar kejadian objek spawn secara random
  - `maxInterval`: interval maksimum antar kejadian objek di spawn secara random
- Menambahkan opsi untuk restart dari level 1 dengan klik tombol kiri mouse di LoseScreen
