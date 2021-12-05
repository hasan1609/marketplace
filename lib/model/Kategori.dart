import 'dart:ffi';

import 'package:marketplace/model/SubKategori.dart';

class Kategori {
  final int id;
  final String nama, gambar;

  Kategori({
    required this.id,
    required this.nama,
    required this.gambar,
  });
}
class SubKategori {
  final int id;
  final String nama, gambar;

  SubKategori({
    required this.id,
    required this.nama,
    required this.gambar,
  });
}
List<Kategori> kategoriList = [
  Kategori(id: 1, nama: "Pulsa & Data", gambar: "assets/icons/Pulsa.svg",),
  Kategori(id: 2, nama: "Tagihan", gambar: "assets/icons/Tagihan.svg"),
  Kategori(id: 3, nama: "Produk", gambar: "assets/icons/Elektronik.svg"),
  Kategori(id: 4, nama: "Lebih Banyak", gambar: "assets/icons/More.svg"),
];

// List<Map<String, dynamic>> kategoriList = [
//   {
//     "gambar": "assets/icons/Pulsa.svg",
//     "id": "dvbchfdcbvnfdv",
//     "nama": "Topup",
//     "subkategori": "",
//   },
//   {
//     "gambar": "assets/icons/Pulsa.svg",
//     "id": "dvbchhgdfhe",
//     "nama": "Tagihan",
//   },
//   {
//     "gambar": "assets/icons/Pulsa.svg",
//     "id": "dhjgfdj",
//     "nama": "Tagihan",
//   }
// ];
