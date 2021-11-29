import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketplace/component/default_button.dart';
import 'package:marketplace/component/labeltext.dart';
import 'package:marketplace/screen/tokoproduk/tokoproduk.dart';
import 'package:marketplace/size_config.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

class formAddProduk extends StatefulWidget {
  @override
  State<formAddProduk> createState() => _formAddProdukState();
}

class _formAddProdukState extends State<formAddProduk> {
  final items = ["Elektronik", "Pakaian"];
  String? value;

  List<Asset> images = <Asset>[];
  String _error = 'No Error Dectected';

  Widget buildGridView() {
    return Padding(
      padding: EdgeInsets.all(getPropertionateScreenWidth(3)),
      child: GridView.count(
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        children: List.generate(
          images.length,
          (index) {
            Asset asset = images[index];
            return AssetThumb(
              asset: asset,
              width: 100,
              height: 100,
            );
          },
        ),
      ),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 5,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(
          takePhotoIcon: "chat",
          doneButtonTitle: "Fatto",
        ),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getPropertionateScreenWidth(10)),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            labelInputText(
              text1: "Pilih Foto Produk",
            ),
            RaisedButton(
              child: Text("Pick images"),
              onPressed: loadAssets,
            ),
            SizedBox(
              height: getPropertionateScreenWidth(5),
            ),
            Expanded(child: buildGridView()),
            SizedBox(
              height: getPropertionateScreenWidth(5),
            ),
            labelInputText(
              text1: "Pilih Kategori Produk",
            ),
            SizedBox(
              height: getPropertionateScreenWidth(5),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidth(20),
              ),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: DropdownButton<String>(
                value: value,
                isExpanded: true,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
            SizedBox(
              height: getPropertionateScreenWidth(15),
            ),
            labelInputText(
              text1: "Masukkan Nama Produk",
            ),
            SizedBox(
              height: getPropertionateScreenWidth(10),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Nama Produk",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintStyle: TextStyle(fontSize: getPropertionateScreenWidth(12)),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(20),
                  vertical: getPropertionateScreenWidth(9),
                ),
              ),
            ),
            SizedBox(
              height: getPropertionateScreenWidth(15),
            ),
            labelInputText(
              text1: "Masukkan Jumlah Stok",
            ),
            SizedBox(
              height: getPropertionateScreenWidth(10),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Jumlah Stok",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintStyle: TextStyle(fontSize: getPropertionateScreenWidth(12)),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(20),
                  vertical: getPropertionateScreenWidth(9),
                ),
              ),
            ),
            SizedBox(
              height: getPropertionateScreenWidth(20),
            ),
            DefaultButton(
              text: "Tambah Produk",
              press: () {
                Navigator.pushReplacementNamed(context, tokoProduk.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }

// pick gambar
  // Future getImageCamera() async {
  //   final List<XFile>? imagePicked = await _picker.pickMultiImage();
  // if (imagePicked!.isNotEmpty) {
  //   image!.addAll(imagePicked);
  // }
  //   image = imagePicked!.map((e) => File(e.path)).toList();

  //   setState(() {});
  // }

  // Future getImageGaleri() async {
  //   final List<XFile>? imagePicked = await _picker.pickMultiImage();
  //   image = imagePicked!.map((e) => File(e.path)).toList();

  //   setState(() {});
  // }
}
