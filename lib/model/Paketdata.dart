import 'package:flutter_svg/flutter_svg.dart';

class PaketData {
  final int id;
  final double harga;
  final bool status;
  final String tipe, keterangan, nama;

  PaketData({
    required this.id,
    required this.nama,
    required this.harga,
    this.status = true,
    required this.tipe,
    required this.keterangan,
  });
}

List<PaketData> PaketDataList = [
  PaketData(
      id: 1,
      nama: "Paket enak",
      harga: 1.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 2,
      nama: "Paket enak",
      harga: 5.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 3,
      nama: "Paket enak",
      harga: 10.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 5,
      nama: "Paket enak",
      harga: 20.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 6,
      nama: "Paket enak",
      harga: 25.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 7,
      nama: "Paket enak",
      harga: 30.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 8,
      nama: "Paket enak",
      harga: 50.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 9,
      nama: "Paket enak",
      harga: 100.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 10,
      nama: "Paket enak",
      harga: 200.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
  PaketData(
      id: 11,
      nama: "Paket enak",
      harga: 150.250,
      status: true,
      tipe: "Telkomsel",
      keterangan: description),
];
const String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic";
