import 'package:flutter/material.dart';

class Produk {
  final int id;
  final String judul, deskripsi;
  final List<String> gambar;
  final List<Color> warna;
  final double rating, harga;
  final bool favorit, populer;

  Produk({
    required this.id,
    required this.judul,
    required this.deskripsi,
    required this.warna,
    this.rating = 0.0,
    required this.harga,
    this.favorit = false,
    required this.gambar,
    this.populer = false,
  });
}

List<Produk> demoProduk = [
  Produk(
    id: 1,
    gambar: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    warna: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    judul: "Wireless Controller for PS4™",
    harga: 64.99,
    deskripsi: description,
    rating: 4.8,
    favorit: true,
    populer: true,
  ),
  Produk(
    id: 2,
    gambar: [
      "assets/images/Image Popular Product 2.png",
    ],
    warna: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    judul: "Nike Sport White - Man Pant",
    harga: 50.5,
    deskripsi: description,
    rating: 4.1,
    populer: true,
  ),
  Produk(
    id: 3,
    gambar: [
      "assets/images/glap.png",
    ],
    warna: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    judul: "Gloves XC Omega - Polygon",
    harga: 36.55,
    deskripsi: description,
    rating: 4.1,
    favorit: true,
    populer: true,
  ),
  Produk(
    id: 4,
    gambar: [
      "assets/images/wireless headset.png",
    ],
    warna: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    judul: "Logitech Head tes sasuua",
    harga: 20.20,
    deskripsi: description,
    rating: 4.1,
    favorit: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
