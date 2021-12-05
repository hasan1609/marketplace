import 'package:flutter/material.dart';
import 'package:marketplace/constant.dart';
import 'package:marketplace/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String selectedBayar = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: getPropertionateScreenWidth(6),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(15),
                  vertical: getPropertionateScreenWidth(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pembelian Pulsa",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getPropertionateScreenWidth(16),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(10),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nomor",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getPropertionateScreenWidth(14),
                            ),
                          ),
                          Text(
                            "Layanan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getPropertionateScreenWidth(14),
                            ),
                          ),
                          Text(
                            "Harga",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getPropertionateScreenWidth(14),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "08123456789",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getPropertionateScreenWidth(14),
                            ),
                          ),
                          Text(
                            "Pulsa Tri 1000",
                            maxLines: 3,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getPropertionateScreenWidth(14),
                            ),
                          ),
                          Text(
                            "Rp.1.250",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getPropertionateScreenWidth(14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0x4DF5F5F5),
              height: getPropertionateScreenWidth(20),
            ),
            InkWell(
              onTap: () => _pilihPembayaran(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidth(15),
                    vertical: getPropertionateScreenWidth(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Metode pembayaran",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getPropertionateScreenWidth(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          selectedBayar,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: getPropertionateScreenWidth(16),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          splashRadius: 20,
                          iconSize: 20,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: getPropertionateScreenWidth(18),
                            color: Colors.black,
                          ),
                          onPressed: () => _pilihPembayaran(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0x4DF5F5F5),
              height: getPropertionateScreenWidth(20),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: getPropertionateScreenWidth(15),
                  vertical: getPropertionateScreenWidth(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ringkasan pembayaran",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getPropertionateScreenWidth(16),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: getPropertionateScreenWidth(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total tagihan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getPropertionateScreenWidth(14),
                        ),
                      ),
                      Text(
                        "Rp.1.250",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getPropertionateScreenWidth(14),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pilihPembayaran() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Color(0xff737373),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: getPropertionateScreenWidth(5),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.food_bank),
                  title: Text("Bank BCA"),
                  onTap: () => selectBayar("Bank BCA"),
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text("Koin"),
                  onTap: () => selectBayar("Koin"),
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text("Saldo Aktif"),
                  onTap: () => selectBayar("Saldo aktif"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void selectBayar(String metode) {
    Navigator.pop(context);
    setState(() {
      selectedBayar = metode;
    });
  }
}
