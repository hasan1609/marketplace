import 'package:flutter_svg/flutter_svg.dart';

class SubKategori {
  final int id, id_kategori;
  final String nama, gambar;

  SubKategori({
    required this.id,
    required this.nama,
    required this.gambar,
    required this.id_kategori,
  });
}

List<SubKategori> subkategoriList = [
  SubKategori(
    id: 1,
    nama: "Pulsa",
    gambar: "assets/icons/Pulsa.svg",
    id_kategori: 1,
  ),
  SubKategori(
    id: 2,
    nama: "Paket Data",
    gambar: "assets/icons/Tagihan.svg",
    id_kategori: 1,
  ),
  SubKategori(
    id: 3,
    nama: "E-Wallet",
    gambar: "assets/icons/Elektronik.svg",
    id_kategori: 1,
  ),
  SubKategori(
    id: 4,
    nama: "Games",
    gambar: "assets/icons/More.svg",
    id_kategori: 1,
  ),
];
