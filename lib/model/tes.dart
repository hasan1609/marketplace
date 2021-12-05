// To parse this JSON data, do
//
//     final kategori = kategoriFromJson(jsonString);

import 'dart:convert';

Kategori kategoriFromJson(String str) => Kategori.fromJson(json.decode(str));

String kategoriToJson(Kategori data) => json.encode(data.toJson());

class Kategori {
  Kategori({
    required this.kategori,
  });

  Map<String, KategoriValue> kategori;

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        kategori: Map.from(json["kategori"]).map((k, v) =>
            MapEntry<String, KategoriValue>(k, KategoriValue.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "kategori": Map.from(kategori)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class KategoriValue {
  KategoriValue({
    required this.gambar,
    required this.id,
    required this.nama,
    required this.subkategori,
    required this.detail,
  });

  String gambar;
  String id;
  String nama;
  Map<String, KategoriValue>? subkategori;
  Map<String, Detail>? detail;

  factory KategoriValue.fromJson(Map<String, dynamic> json) => KategoriValue(
        gambar: json["gambar"],
        id: json["id"],
        nama: json["nama"],
        subkategori: json["subkategori"] == null
            ? null
            : Map.from(json["subkategori"]).map((k, v) =>
                MapEntry<String, KategoriValue>(k, KategoriValue.fromJson(v))),
        detail: json["detail"] == null
            ? null
            : Map.from(json["detail"])
                .map((k, v) => MapEntry<String, Detail>(k, Detail.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "gambar": gambar,
        "id": id,
        "nama": nama,
        "subkategori": subkategori == null
            ? null
            : Map.from(subkategori!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "detail": detail == null
            ? null
            : Map.from(detail!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Detail {
  Detail({
    required this.harga,
    required this.id,
    required this.nominal,
  });

  int harga;
  String id;
  int nominal;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        harga: json["harga"],
        id: json["id"],
        nominal: json["nominal"],
      );

  Map<String, dynamic> toJson() => {
        "harga": harga,
        "id": id,
        "nominal": nominal,
      };
}
