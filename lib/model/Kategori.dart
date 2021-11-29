import 'package:flutter_svg/flutter_svg.dart';

class Kategori {
  final int id;
  final String nama, gambar;

  Kategori({
    required this.id,
    required this.nama,
    required this.gambar,
  });
}

List<Kategori> kategoriList = [
  Kategori(id: 1, nama: "Pulsa & Data", gambar: "assets/icons/Pulsa.svg"),
  Kategori(id: 2, nama: "Tagihan", gambar: "assets/icons/Tagihan.svg"),
  Kategori(id: 3, nama: "Elektronik", gambar: "assets/icons/Elektronik.svg"),
  Kategori(id: 4, nama: "Lebih Banyak", gambar: "assets/icons/More.svg"),
];
