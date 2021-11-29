import 'package:flutter_svg/flutter_svg.dart';

class Pulsa {
  final int id;
  final double nominal, harga;
  final bool status;
  final String tipe;

  Pulsa({
    required this.id,
    required this.nominal,
    required this.harga,
    this.status = true,
    required this.tipe,
  });
}

List<Pulsa> PulsaList = [
  Pulsa(id: 1, nominal: 1.000, harga: 1.250, status: true, tipe: "Telkomsel"),
  Pulsa(id: 2, nominal: 5.000, harga: 5.250, status: true, tipe: "Telkomsel"),
  Pulsa(id: 3, nominal: 10.000, harga: 10.250, status: true, tipe: "Telkomsel"),
  Pulsa(id: 5, nominal: 20.000, harga: 20.250, status: true, tipe: "Telkomsel"),
  Pulsa(id: 6, nominal: 25.000, harga: 25.250, status: true, tipe: "Telkomsel"),
  Pulsa(id: 7, nominal: 30.000, harga: 30.250, status: true, tipe: "Telkomsel"),
  Pulsa(id: 8, nominal: 50.000, harga: 50.250, status: true, tipe: "Telkomsel"),
  Pulsa(
      id: 9, nominal: 100.000, harga: 100.250, status: true, tipe: "Telkomsel"),
  Pulsa(
      id: 10,
      nominal: 200.000,
      harga: 200.250,
      status: true,
      tipe: "Telkomsel"),
  Pulsa(
      id: 11,
      nominal: 150.000,
      harga: 150.250,
      status: true,
      tipe: "Telkomsel"),
];
