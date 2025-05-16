# Tutorial 4 & 6 & 8

| Index |
| --- |
| [Tutorial 4](#tutorial-4---basic-2d-level-design) |
| [Tutorial 6](#tutorial-6---menu--in-game-gui) |
| [Tutorial 6](#tutorial-8---game-polishing--balancing) |

## Tutorial 8 - Game Polishing & Balancing

Di tutorial ini, saya mengikutinya cukup *straightforward*.
Untuk *polishing*, saya membuat partikel hujan untuk Level 1 serta partikel *trail* untuk Player.
Kedua partikel tersebut saya buat menggunakan `GPUParticles2D`.
Partikel hujan saya *polish* lebih lanjut untuk tidak menjadi distraksi bagi player dengan mengubah warnanya mengikuti *background*.
Partikel *trail* Player juga saya ubah supaya hanya muncul saat Player bergerak, dan tidak lagi *emit* saat Player berhenti bergerak.

Kemudian untuk *balancing*, saya mengubah posisi *spawner* Fish di level 1 untuk menghindari *clumping* Fish yang terlalu banyak di satu tempat.
Dari percobaan saya, *clumping* Fish tersebut dapat membuat game menjadi lebih sulit.
Berhubung ini adalah level pertama, saya rasa *challenge* yang diberikan harus lebih mudah.

> Before:

https://github.com/user-attachments/assets/5c9200bc-763e-4640-8fbe-4703b22f13d7

> After:


https://github.com/user-attachments/assets/c61183f1-be1e-4041-9139-26f705cebd6c


## Tutorial 6 - Menu & In-Game GUI

Final Commit: `b4f1465`

### Proses Pengerjaan: Latihan Mandiri

Setelah mengikuti Latihan Membuat Menu Utama, Clickable Menu, Membuat GUI Life Counter, dan Membuat Layar Game Over,
saya mengerjakan Latihan Mandiri Fitur Tambahan.

Pertama, saya implementasi Tombol pada layar game over untuk kembali ke menu utama menggunakan
Button (bukan LinkButton). Sebenarnya tidak berbeda jauh, namun saya rasa Button lebih cocok dibanding LinkButton.
Button tersebut dihubungkan dengan script untuk mengubah scene ke `MainMenu.tscn`

Kemudian, saya implementasi Fitur Select Stage.
Disini saya menggunakan **Signals**, sehingga hanya perlu 1 script `stage_select.gd` untuk kedua tombol yang ada .
Saya juga mengubah MainMenu untuk menggunakan sistem Signals, sehingga ada 1 script `main_menu.gd` untuk tombol "New Game" dan "Stage Select"

### Polishing Tutorial 06

Untuk polishing, saya melakukan:

- Menggunakan Signals untuk handling event `_on_pressed()` tombol-tombol di Main Menu dan Stage Select
- Menambahkan background image di MainMenu dan StageSelect
- Menambahkan outline di Life Counter sehingga ada kontras dengan latar belakang level
- Mengubah enemy (`Fish`) sehingga menggunakan scene GameOver baru apabila player menyentuhnya
- Merapihkan struktur proyek
  - Scenes memiliki folder `level`, `entities` dan `menu`
  - `level` menyimpan `entities` dan scene Level1 dan Level2
  - `entities` menyimpan semua entitas yang ada di game (fish, player, etc)
  - `menu` menyimpan semua scene UI di game (MainMenu, GameOver, StageSelect, etc)

## Tutorial 4 - Basic 2D Level Design

Final Commit: `aecf1fa`

### Proses Pengerjaan: Level Baru

Pertama saya membuat `Level2` (hasil duplikat dari `Level1`) dan mengganti `TileSet` menggunakan spritesheet bertema pasir.
`TileSet` yang baru tersebut dikonfigurasi paint physics layernya, dan kemudian menghapus Paint TileMap yang lama dengan painting TileMap baru.
Setelah selesai menggambar layout level, saya mengubah lokasi "Star" atau objektif ke lokasi baru.

Untuk rintangan baru, saya membuat scene `Bee` (duplikat dari `Fish`) dan mengubah spritenya menjadi lebah.
Kemudian saya meletakkan Spawner di level baru dan mengubah `Obstacle` menjadi scene `Bee` tersebut.

### Polishing Tutorial 04

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
  - `spawn_range`: deviasi range spawn horizontal yang dapat dipilih secara random
  - `min_interval`: interval minimum antar kejadian objek spawn secara random
  - `max_interval`: interval maksimum antar kejadian objek di spawn secara random
- Menambahkan opsi untuk restart dari level 1 dengan klik tombol kiri mouse di LoseScreen
