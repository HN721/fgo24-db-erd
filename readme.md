ERD PERPUSTAKAAN
This project was created by Hosea from Koda Academy, to design a library application database using ERD with the Mermaid tool.

```mermaid

erDiagram
direction LR
    Buku  ||--o{ KATEGORI : Memiliki
    Buku ||--o{ Petugas : Dikelola
    Buku }o--||Rak_Buku: Disimpan-di
    Buku }o--|| Transaksi : Mempunyai
    Peminjam||--o{Transaksi : Melakukan


    Buku {
        string Id_buku PK
        string Judul
        string Isbn
        string Penulis
        date Tanggal_rilis
        string Penerbit
        string Jumlah_Halaman
        string sinopsis
        string Id_Kategori FK
        string Id_Rak_buku FK
        string Id_Petugas FK
    }
    KATEGORI
    KATEGORI {
        string Id_Kategori PK
        string Nama_Kategori
    }
    Rak_Buku {
        string Id_Rak_buku PK
        int Kapasitas
        int No_rak

    }
    Petugas {
        string Id_Petugas PK
        string Nama
    }
    Peminjam{
        string id_Peminjam PK
        string Nama
    }

    Transaksi{
        string id_Transaksi PK
        string id_Buku FK
        string id_Peminjam FK
        date tanggal_pemesanan
        date deadline
        boolean Dikembalikan


    }

```
