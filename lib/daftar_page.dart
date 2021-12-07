import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';

import 'dashboard_page.dart';
import 'size_config.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({Key? key}) : super(key: key);

  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nmrController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),

              SizedBox(height: getProportionateScreenHeight(50),),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Nama",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                child: TextFormField(
                  controller: _namaController,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: primaryColor),
                  obscureText: false,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tidak Boleh Kosong";
                      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                    }
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Nama Lengkap",
                      hintStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(15),
                          color: primaryColor),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Email",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                child: TextFormField(
                  controller: _emailController,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: primaryColor),
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
                          fontSize: getProportionateScreenWidth(15),
                          color: primaryColor),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Password",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                child: TextFormField(
                  controller: _passwordController,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: primaryColor),
                  obscureText: true,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tidak Boleh Kosong";
                      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                    }
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(15),
                          color: primaryColor),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "No. Telepon / Whatsapp",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                child: TextFormField(
                  controller: _nmrController,
                  keyboardType: TextInputType.number,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: primaryColor),
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
                          fontSize: getProportionateScreenWidth(15),
                          color: primaryColor),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(139, 195, 74, 1),
                      borderRadius:
                          BorderRadius.circular(getProportionateScreenWidth(7))),
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(80),
                      vertical: getProportionateScreenHeight(7)),
                  child: Text(
                    "DAFTAR",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(15)),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(50),),
              Text(
                "Sudah punya akun?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(13)),
              ),

              SizedBox(height: getProportionateScreenHeight(10),),

              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(139, 195, 74, 1),
                      borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(7))),
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(30),
                      vertical: getProportionateScreenHeight(7)),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(13)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
