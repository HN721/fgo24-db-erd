CREATE TABLE kategori (
    id_kategori VARCHAR(255) PRIMARY KEY,
    nama_kategori VARCHAR(255)
);

CREATE TABLE petugas (
    id_petugas VARCHAR(255) PRIMARY KEY,
    nama VARCHAR(255)
);

CREATE TABLE rak_buku (
    id_rak_buku VARCHAR(255) PRIMARY KEY,
    kapasitas INT,
    no_rak INT
);

CREATE TABLE transaksi (
    id_transaksi VARCHAR(255) PRIMARY KEY,
    id_buku VARCHAR(255) REFERENCES buku (id_buku),
    id_peminjam VARCHAR(255) REFERENCES peminjam (id_peminjam),
    tanggal_pemesanan DATE,
    deadline DATE,
    dikembalikan BOOLEAN
);

CREATE TABLE peminjam (
    id_peminjam VARCHAR(255) PRIMARY KEY,
    nama VARCHAR(255)
);

CREATE TABLE buku (
    id_buku VARCHAR(255) PRIMARY KEY,
    judul VARCHAR(255),
    isbn VARCHAR(255),
    penulis VARCHAR(255),
    tgl_rilis DATE,
    jumlah_halaman VARCHAR(255),
    sinopsis VARCHAR(255),
    id_kategori VARCHAR(255) REFERENCES kategori (id_kategori),
    id_rak_buku VARCHAR(255) REFERENCES rak_buku (id_rak_buku),
    id_petugas VARCHAR(255) REFERENCES petugas (id_petugas)
);

SELECT * FROM buku

INSERT INTO
    peminjam (id_peminjam, nama)
VALUES ('1', 'Hosea'),
    ('2', 'Dwi'),
    ('3', 'Denis'),
    ('4', 'Yusuf'),
    ('5', 'Faisal'),
    ('6', 'Yasir'),
    ('7', 'Nanda'),
    ('8', 'Rinaldy'),
    ('9', 'Koda'),
    ('10', 'Budi');

SELECT * FROM peminjam

INSERT INTO
    petugas (id_petugas, nama)
VALUES ('1', 'petugas 1'),
    ('2', 'petugas 2'),
    ('3', 'petugas 3'),
    ('4', 'petugas 4'),
    ('5', 'petugas 5'),
    ('6', 'petugas 6'),
    ('7', 'petugas 7'),
    ('8', 'petugas 8'),
    ('9', 'petugas 9'),
    ('10', 'petugas 10');

SELECT * FROM petugas

INSERT INTO
    kategori (id_kategori, nama_kategori)
VALUES ('1', 10, 1),
    ('2', 'Action'),
    ('3', 'Advanture'),
    ('4', 'Romance'),
    ('5', 'Slice of life'),
    ('6', 'Drama'),
    ('7', 'Komedi'),
    ('8', 'Sains'),
    ('9', 'Fantasy'),
    ('10', 'Dongeng');

SELECT * FROM kategori;

SELECT nama_kategori FROM kategori WHERE id_kategori = '2';

INSERT INTO
    rak_buku (
        id_rak_buku,
        kapasitas,
        no_rak
    )
VALUES ('1', 10, 1),
    ('2', 10, 2),
    ('3', 10, 3),
    ('4', 10, 4),
    ('5', 10, 5),
    ('6', 10, 6),
    ('7', 10, 7),
    ('8', 10, 8),
    ('9', 10, 9),
    ('10', 10, 10);

SELECT * FROM rak_buku;

ALTER TABLE buku ADD penerbit VARCHAR(255);

SELECT * FROM buku;

DELETE FROM buku;

INSERT INTO
    buku (
        id_buku,
        judul,
        isbn,
        penulis,
        tgl_rilis,
        jumlah_halaman,
        sinopsis,
        id_kategori,
        id_rak_buku,
        id_petugas,
        penerbit
    )
VALUES (
        '1',
        'Dilan',
        '23',
        'yasir',
        '2025-06-16',
        '100',
        'Test',
        '1',
        '1',
        '1',
        'gramedia'
    ),
    (
        '2',
        'Laskar Pelangi',
        '24',
        'Andrea Hirata',
        '2024-01-10',
        '250',
        'Tentang anak-anak di Belitung',
        '2',
        '1',
        '1',
        'Bentang Pustaka'
    ),
    (
        '3',
        'Bumi',
        '25',
        'Tere Liye',
        '2023-05-01',
        '300',
        'Novel fantasi remaja',
        '3',
        '2',
        '1',
        'Gramedia'
    ),
    (
        '4',
        'Negeri 5 Menara',
        '26',
        'Ahmad Fuadi',
        '2022-08-21',
        '280',
        'Kisah santri dengan mimpi besar',
        '2',
        '2',
        '1',
        'Gramedia'
    ),
    (
        '5',
        'Ronggeng Dukuh Paruk',
        '27',
        'Ahmad Tohari',
        '2021-12-10',
        '220',
        'Kisah Ronggeng Srintil',
        '4',
        '3',
        '1',
        'Gramedia'
    ),
    (
        '6',
        'Ayat-Ayat Cinta',
        '28',
        'Habiburrahman El Shirazy',
        '2020-07-15',
        '320',
        'Novel romantis islami',
        '2',
        '1',
        '1',
        'Republika'
    ),
    (
        '7',
        'Perahu Kertas',
        '29',
        'Dewi Lestari',
        '2023-02-05',
        '310',
        'Cinta dan impian',
        '1',
        '1',
        '1',
        'Bentang Pustaka'
    ),
    (
        '8',
        'Supernova',
        '30',
        'Dewi Lestari',
        '2022-06-30',
        '270',
        'Fiksi ilmiah filosofis',
        '3',
        '2',
        '1',
        'Truedee Books'
    ),
    (
        '9',
        'Koala Kumal',
        '31',
        'Raditya Dika',
        '2019-09-09',
        '180',
        'Komedi cinta patah hati',
        '1',
        '2',
        '1',
        'GagasMedia'
    ),
    (
        '10',
        'Sabtu Bersama Bapak',
        '32',
        'Adhitya Mulya',
        '2021-03-25',
        '210',
        'Pesan kehidupan dari ayah',
        '1',
        '3',
        '1',
        'GagasMedia'
    );

INSERT INTO
    transaksi (
        id_transaksi,
        id_peminjam,
        id_buku,
        tanggal_pemesanan,
        deadline,
        dikembalikan
    )
VALUES (
        '1',
        '1',
        '1',
        '2025-06-01',
        '2025-06-12',
        FALSE
    );

INSERT INTO
    transaksi (
        id_transaksi,
        id_peminjam,
        id_buku,
        tanggal_pemesanan,
        deadline,
        dikembalikan
    )
VALUES (
        '3',
        '2',
        '1',
        '2025-06-01',
        '2025-06-12',
        FALSE
    ),
    (
        '4',
        '2',
        '1',
        '2025-06-01',
        '2025-06-12',
        FALSE
    ),
    (
        '5',
        '2',
        '1',
        '2025-06-01',
        '2025-06-12',
        FALSE
    ),
    (
        '6',
        '1',
        '5',
        '2025-06-01',
        '2025-06-12',
        FALSE
    ),
    (
        '7',
        '1',
        '10',
        '2025-05-01',
        '2025-06-12',
        FALSE
    ),
    (
        '8',
        '10',
        '1',
        '2025-03-01',
        '2025-06-12',
        FALSE
    ),
    (
        '9',
        '8',
        '1',
        '2025-03-01',
        '2025-04-12',
        TRUE
    ),
    (
        '10',
        '2',
        '1',
        '2025-02-01',
        '2025-03-12',
        TRUE
    );

SELECT * FROM transaksi