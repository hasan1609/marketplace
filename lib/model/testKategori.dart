import 'package:marketplace/model/Kategori.dart';

class tesKategori {
  final int id;
  final String nama, gambar;
  // final testSubKategori subKategori;
  List<testSubKategori> subkategori;

  tesKategori({
    required this.id,
    required this.nama,
    required this.gambar,
    required this.subkategori,
  });
}

class testSubKategori {
  final int id;
  final String namaSyb, gmbr;
  List<detailSubKategori> detailSubKatgori;

  testSubKategori({
    required this.id,
    required this.namaSyb,
    required this.gmbr,
    required this.detailSubKatgori,
  });
}

class detailSubKategori {
  final int id;
  final double harga;
  final bool status;
  final String tipe, keterangan, nama;

  detailSubKategori({
    required this.id,
    required this.nama,
    required this.harga,
    this.status = true,
    required this.tipe,
    required this.keterangan,
  });
}

List<tesKategori> tesKategoriList = [
  tesKategori(
    id: 1,
    nama: "Top-Up",
    gambar: "assets/icons/Pulsa.svg",
    subkategori: [
      testSubKategori(
        id: 1,
        namaSyb: "Pulsa",
        gmbr: "assets/icons/Pulsa.svg",
        detailSubKatgori: [
          detailSubKategori(
              id: 1,
              nama: "1.000",
              harga: 1.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 2,
              nama: "5.000",
              harga: 5.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 3,
              nama: "10.000",
              harga: 10.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 5,
              nama: "20.000",
              harga: 20.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 6,
              nama: "25.000",
              harga: 25.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 7,
              nama: "30.000",
              harga: 30.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 8,
              nama: "50.000",
              harga: 50.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 9,
              nama: "100.000",
              harga: 100.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 10,
              nama: "200.000",
              harga: 200.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
          detailSubKategori(
              id: 11,
              nama: "150.000",
              harga: 150.250,
              status: true,
              tipe: "Telkomsel",
              keterangan: ''),
        ],
      ),
      testSubKategori(
        id: 2,
        namaSyb: "Paket Data",
        gmbr: "assets/icons/Tagihan.svg",
        detailSubKatgori: [
          detailSubKategori(
              id: 1,
              nama: "Paket enak",
              harga: 1.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 2,
              nama: "Paket enak",
              harga: 5.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 3,
              nama: "Paket enak",
              harga: 10.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 5,
              nama: "Paket enak",
              harga: 20.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 6,
              nama: "Paket enak",
              harga: 25.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 7,
              nama: "Paket enak",
              harga: 30.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 8,
              nama: "Paket enak",
              harga: 50.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 9,
              nama: "Paket enak",
              harga: 100.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 10,
              nama: "Paket enak",
              harga: 200.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
          detailSubKategori(
              id: 11,
              nama: "Paket enak",
              harga: 150.250,
              status: true,
              tipe: "Telkomsel",
<<<<<<< HEAD
              keterangan: description),
=======
              keterangan: deskripsiku),
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
        ],
      ),
      testSubKategori(
        id: 3,
        namaSyb: "E-Wallet",
        gmbr: "assets/icons/Elektronik.svg",
        detailSubKatgori: [
          detailSubKategori(
              tipe: 'ewallet',
              harga: 100,
              keterangan: 'assets/images/LogoDana.jpg',
              id: 1,
              nama: "dana"),
          detailSubKategori(
              tipe: 'ewallet',
              harga: 100,
              keterangan: 'assets/images/LogoDana.jpg',
              id: 1,
              nama: "dana"),
          detailSubKategori(
              tipe: 'ewallet',
              harga: 100,
              keterangan: 'assets/images/LogoDana.jpg',
              id: 1,
              nama: "dana"),
        ],
      ),
      testSubKategori(
        id: 4,
        namaSyb: "Games",
        gmbr: "assets/icons/More.svg",
        detailSubKatgori: [
          detailSubKategori(
              tipe: 'game',
              harga: 100,
              keterangan: 'assets/images/LogoDana.jpg',
              id: 1,
              nama: "ff"),
        ],
      ),
    ],
  ),
  tesKategori(
    id: 2,
    nama: "Tagihan",
    gambar: "assets/icons/Tagihan.svg",
    subkategori: [
      testSubKategori(
        id: 5,
        namaSyb: "Pulsa",
        gmbr: "assets/icons/Pulsa.svg",
        detailSubKatgori: [],
      ),
      testSubKategori(
        id: 6,
        namaSyb: "Paket Data",
        gmbr: "assets/icons/Tagihan.svg",
        detailSubKatgori: [],
      ),
      testSubKategori(
        id: 7,
        namaSyb: "E-Wallet",
        gmbr: "assets/icons/Elektronik.svg",
        detailSubKatgori: [],
      ),
    ],
  ),
  tesKategori(
      id: 3,
      nama: "Produk",
      gambar: "assets/icons/Elektronik.svg",
      subkategori: []),
  tesKategori(
      id: 4,
      nama: "Lebih Banyak",
      gambar: "assets/icons/More.svg",
      subkategori: []),
];
<<<<<<< HEAD
const String description =
=======
const String deskripsiku =
>>>>>>> 19d2d5b87e57e867985616cbb9bca839ccb7939b
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic";
