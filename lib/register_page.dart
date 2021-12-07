import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';

import 'size_config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _telpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                  tag: "logo",
                  child: Center(child: Image.asset("assets/images/logo.png"))),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              Text(
                "Nama",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(15)),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                child: TextFormField(
                  controller: _namaController,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(fontSize: getProportionateScreenWidth(15)),
                  obscureText: false,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tidak Boleh Kosong";
                      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                    }
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Nama",
                      hintStyle:
                          TextStyle(fontSize: getProportionateScreenWidth(15)),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
              ),
              Text(
                "Email",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(15)),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                margin:
                EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  controller: _emailController,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(fontSize: getProportionateScreenWidth(15)),
                  obscureText: false,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tidak Boleh Kosong";
                      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                    }
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle:
                          TextStyle(fontSize: getProportionateScreenWidth(15)),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
                // margin: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
              ),
              Text(
                "Password",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(15)),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                margin:
                EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  controller: _passwordController,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(fontSize: getProportionateScreenWidth(15)),
                  obscureText: false,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Tidak Boleh Kosong";
                      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                    }
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle:
                          TextStyle(fontSize: getProportionateScreenWidth(15)),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
                // margin: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
              ),
              Text(
                "No. Telepon / Whatsapp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(15)),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(40),
                margin:
                EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  controller: _passwordController,
                  // controller: passwordController..text = 'A0000048',
                  style: TextStyle(fontSize: getProportionateScreenWidth(15)),
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
                      hintStyle:
                          TextStyle(fontSize: getProportionateScreenWidth(15)),
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(10),
                          left: getProportionateScreenWidth(10))),
                ),
                // margin: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(15)),
                  height: getProportionateScreenHeight(40),
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(10))),
                  child: Center(
                    child: Text(
                      "DAFTAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              Center(
                child: Text(
                  "Sudah punya akun?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(15)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Container(
                    width: getProportionateScreenWidth(120),
                    margin:
                        EdgeInsets.only(top: getProportionateScreenHeight(10)),
                    height: getProportionateScreenHeight(40),
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10))),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    ),
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
