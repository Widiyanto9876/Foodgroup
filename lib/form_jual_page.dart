import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/size_config.dart';
import 'package:foodgroup/succes_page.dart';

class FormJualPage extends StatefulWidget {
  const FormJualPage({Key? key}) : super(key: key);

  @override
  _FormJualPageState createState() => _FormJualPageState();
}

class _FormJualPageState extends State<FormJualPage> {
  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _satuanController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Lengkapi informasi",
          style: TextStyle(
              color: Colors.white, fontSize: getProportionateScreenWidth(20)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: getProportionateScreenHeight(20),
            left: getProportionateScreenWidth(10),
            right: getProportionateScreenWidth(10)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kategori: Beras",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w600),
              ),
              TextFormField(
                controller: _judulController,
                maxLength: 50,
                style: TextStyle(
                    color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                cursorColor: Colors.grey.shade600,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  focusColor: Colors.grey,
                  labelText: "Judul Iklan*",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              TextFormField(
                controller: _descController,
                maxLength: 5000,
                cursorColor: Colors.grey.shade600,
                style: TextStyle(
                    color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  focusColor: Colors.red,
                  labelText: "Descripsi Produk*",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              TextFormField(
                controller: _satuanController,
                maxLength: 50,
                cursorColor: Colors.grey.shade600,
                style: TextStyle(
                    color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  focusColor: Colors.red,
                  labelText: "Satuan*",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              TextFormField(
                controller: _hargaController,
                maxLength: 50,
                cursorColor: Colors.grey.shade600,
                style: TextStyle(
                    color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  focusColor: Colors.red,
                  labelText: "Descripsi Produk*",
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              Text(
                "Lokasi*",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: getProportionateScreenWidth(14)),
              ),
              Text(
                "Yogyakarta",
                style: TextStyle(fontSize: getProportionateScreenWidth(15)),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "Lokasi*",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: getProportionateScreenWidth(14)),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.grey.shade400),
                  child: Text(
                    "Unggah Foto",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(12)),
                  )),
              SizedBox(
                height: getProportionateScreenHeight(80),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SuccessPage()));
                },
                child: Container(
                  width: double.infinity,
                  height: getProportionateScreenHeight(45),
                  color: primaryColor,
                  child: Center(
                      child: Text(
                    "KIRIM",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(17)),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
