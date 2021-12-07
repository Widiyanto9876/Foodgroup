import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';

import 'size_config.dart';

class InformasiSayaPage extends StatefulWidget {
  const InformasiSayaPage({Key? key}) : super(key: key);

  @override
  _InformasiSayaPageState createState() => _InformasiSayaPageState();
}

class _InformasiSayaPageState extends State<InformasiSayaPage> {
  final TextEditingController _namaPenggunaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _telpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 238, 239, 1),
      appBar: AppBar(
        title: Text("Informasi Saya"),
        backgroundColor: primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              width: getProportionateScreenWidth(100),
              height: getProportionateScreenHeight(100),
              margin: EdgeInsets.only(top: getProportionateScreenHeight(30)),
              padding: EdgeInsets.only(top: getProportionateScreenHeight(50)),
              decoration: BoxDecoration(
                  color: Colors.grey.shade600, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  "pilih gambar",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(8),
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(80),
                  left: getProportionateScreenWidth(40),
                  right: getProportionateScreenWidth(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        color: Colors.grey.shade600),
                  ),
                  Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey.shade500, width: 1),
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(6))),
                    child: TextFormField(
                      controller: _namaPenggunaController,
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(14)),
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Tidak Boleh Kosong";
                          //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Nama Pengguna",
                          hintStyle: TextStyle(
                              fontSize: getProportionateScreenWidth(14)),
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(
                              // top: getProportionateScreenHeight(12),
                              bottom: getProportionateScreenHeight(8),
                              left: getProportionateScreenWidth(10))),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        color: Colors.grey.shade600),
                  ),
                  Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey.shade500, width: 1),
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(6))),
                    child: TextFormField(
                      controller: _emailController,
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(14)),
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Tidak Boleh Kosong";
                          //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Alamat Email",
                          hintStyle: TextStyle(
                              fontSize: getProportionateScreenWidth(14)),
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(
                              // top: getProportionateScreenHeight(12),
                              bottom: getProportionateScreenHeight(8),
                              left: getProportionateScreenWidth(10))),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    "Alamat",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        color: Colors.grey.shade600),
                  ),
                  Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey.shade500, width: 1),
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(6))),
                    child: TextFormField(
                      controller: _alamatController,
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(14)),
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Tidak Boleh Kosong";
                          //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Alamat",
                          hintStyle: TextStyle(
                              fontSize: getProportionateScreenWidth(14)),
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(
                              // top: getProportionateScreenHeight(12),
                              bottom: getProportionateScreenHeight(8),
                              left: getProportionateScreenWidth(10))),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    "No. Telepon / Whatsapp",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        color: Colors.grey.shade600),
                  ),
                  Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey.shade500, width: 1),
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(6))),
                    child: TextFormField(
                      controller: _telpController,
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(14)),
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Tidak Boleh Kosong";
                          //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Nomor Telepon",
                          hintStyle: TextStyle(
                              fontSize: getProportionateScreenWidth(14)),
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(
                              // top: getProportionateScreenHeight(12),
                              bottom: getProportionateScreenHeight(8),
                              left: getProportionateScreenWidth(10))),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Text(
                    "Ubah Paswword",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        color: Colors.grey.shade900),
                  ),

                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Center(
                    child: Container(
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(139, 195, 74, 1),borderRadius: BorderRadius.circular(getProportionateScreenWidth(8))),
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(60),
                          vertical: getProportionateScreenHeight(7)),
                      child: Text(
                        "SIMPAN",
                        style: TextStyle(color: Colors.white,fontSize: getProportionateScreenWidth(15)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
