import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/daftar_page.dart';
import 'package:foodgroup/menu_page.dart';
import 'package:foodgroup/register_page.dart';
import 'package:foodgroup/size_config.dart';

import 'dashboard_page.dart';
import 'jual_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String _email = "testing@gmail.com";
  final String _password = "testing";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: getProportionateScreenHeight(100)),
                child: Hero(tag: "logo", child: Image.asset("assets/images/logo.png")),
              ),
              Padding(
                padding:  EdgeInsets.only(top:getProportionateScreenHeight(180)),
                child: Text(
                  "Selamat datang di FoodGroup",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(200),
                margin: EdgeInsets.only(top: getProportionateScreenHeight(270)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(20))),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(25),
                      horizontal: getProportionateScreenWidth(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(color: primaryColor),
                      ),
                      Container(
                        width: double.infinity,
                        height: getProportionateScreenHeight(40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        margin: EdgeInsets.only(
                            bottom: getProportionateScreenHeight(15)),
                        child: TextFormField(
                          controller: _emailController,
                          // controller: passwordController..text = 'A0000048',



                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15)),
                          obscureText: false,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  fontSize: getProportionateScreenWidth(15)),
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(
                                  bottom: getProportionateScreenHeight(10),
                                  left: getProportionateScreenWidth(10))),
                        ),
                      ),
                      Text(
                        "Password",
                        style: TextStyle(color: primaryColor),
                      ),
                      Container(
                        width: double.infinity,
                        height: getProportionateScreenHeight(40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          controller: _passwordController,
                          // controller: passwordController..text = 'A0000048',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15)),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: getProportionateScreenWidth(15)),
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.only(
                                  bottom: getProportionateScreenHeight(10),
                                  left: getProportionateScreenWidth(10))),
                        ),
                        // margin: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:getProportionateScreenHeight(470)),
                child: InkWell(
                  onTap: () {
                    if (_emailController.text != _email ||
                        _passwordController.text != _password) {
                      showGeneralDialog(
                        barrierLabel: "Label",
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: Duration(milliseconds: 700),
                        context: context,
                        pageBuilder: (context, anim1, anim2) {
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: getProportionateScreenHeight(50),
                              child: const SizedBox.expand(
                                  child: Material(
                                      child: Center(
                                child: Text("Email atau password anda salah"),
                              ))),
                              margin: const EdgeInsets.only(
                                  bottom: 50, left: 12, right: 12),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          );
                        },
                        transitionBuilder: (context, anim1, anim2, child) {
                          return SlideTransition(
                            position: Tween(
                                    begin: const Offset(0, 1),
                                    end: const Offset(0, 0))
                                .animate(anim1),
                            child: child,
                          );
                        },
                      );
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardPage()));
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    margin:
                        EdgeInsets.only(top: getProportionateScreenHeight(20)),
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
              Padding(
                padding: EdgeInsets.only(top:getProportionateScreenHeight(570)),
                child: Text(
                  "Belum punya akun?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(15)),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: getProportionateScreenHeight(600)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DaftarPage()));
                  },
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
              ),
              Padding(
                padding:  EdgeInsets.only(top: getProportionateScreenHeight(700)),

                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            getProportionateScreenWidth(20)))),
                                // contentPadding: EdgeInsets.only(top: 10.0),
                                content: Container(
                                  width: double.infinity,
                                  // height: getProportionateScreenHeight(200),
                                  // margin: EdgeInsets.symmetric(
                                  //     horizontal:
                                  //         getProportionateScreenWidth(50)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        "Reset Password",
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontSize:
                                                getProportionateScreenWidth(20)),
                                      ),
                                      SizedBox(height: getProportionateScreenHeight(20),),
                                      Container(
                                        width: double.infinity,
                                        height: getProportionateScreenHeight(30),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: primaryColor, width: 1),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: TextFormField(
                                          controller: _emailController,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      12)),
                                          obscureText: false,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Tidak Boleh Kosong";
                                              //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Tidak Boleh Kosong")));
                                            }
                                          },
                                          decoration: InputDecoration(
                                              border: InputBorder.none,

                                              hintText: "Alamat Email Anda",
                                              hintStyle: TextStyle(

                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          12)),
                                              fillColor: Colors.white,
                                              contentPadding: EdgeInsets.only(
                                                  bottom:
                                                      getProportionateScreenHeight(
                                                          13),
                                                  left:
                                                      getProportionateScreenWidth(
                                                          10))),
                                        ),
                                      ),
                                      SizedBox(height: getProportionateScreenHeight(20),),
                                      Container(
                                          width: double.infinity,
                                          height:
                                              getProportionateScreenHeight(30),
                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Center(
                                            child: Text(
                                              "RESET PASSWORD DI EMAIL",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          12)),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              );
                            });
                        // AlertDialog(
                        //   backgroundColor: Colors.white,
                        //   title: Text("Hello"),
                        //
                        // );
                      },
                      child: Text(
                        "Lupa Password?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(15)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
