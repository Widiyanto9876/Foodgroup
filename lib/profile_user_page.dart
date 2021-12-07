import 'package:flutter/material.dart';
import 'package:foodgroup/about_page.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/favorite_page.dart';
import 'package:foodgroup/informasisaya_page.dart';
import 'package:foodgroup/katalog_saya_page.dart';
import 'package:foodgroup/login_page.dart';
import 'package:foodgroup/size_config.dart';

class ProfileUserPage extends StatefulWidget {
  const ProfileUserPage({Key? key}) : super(key: key);

  @override
  _ProfileUserPageState createState() => _ProfileUserPageState();
}

class _ProfileUserPageState extends State<ProfileUserPage> {
  Widget listProfile(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(fontSize: getProportionateScreenWidth(15)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(120),
            child: Center(
              child: Text(
                "My Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(18)),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(top: getProportionateScreenHeight(175)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenWidth(35)),
                    topRight:
                        Radius.circular(getProportionateScreenWidth(35)))),
            padding: EdgeInsets.only(top: getProportionateScreenHeight(70)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Nama Toko Serba Guna",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(40)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Akun Saya",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15)),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const InformasiSayaPage()));
                            },
                            child: listProfile(
                                Icons.person_outlined, "Informasi Akun")),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          height: 2,
                          color: Color.fromRGBO(96, 110, 121, 1),
                          thickness: 1,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>const FavoritePage()));
                            },
                            child: listProfile(Icons.favorite_border_outlined,
                                "Favorit Saya")),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          height: 2,
                          color: Color.fromRGBO(96, 110, 121, 1),
                          thickness: 1,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        InkWell(
                            onTap: (){

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>const KatalogSayaPage()));

                            },
                            child: listProfile(Icons.storefront_outlined, "Katalog Saya")),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          height: 2,
                          color: Color.fromRGBO(96, 110, 121, 1),
                          thickness: 1,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutPage()));
                            },
                            child: listProfile(Icons.help_outlined, "Pusat Bantuan")),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        const Divider(
                          height: 2,
                          color: Color.fromRGBO(96, 110, 121, 1),
                          thickness: 1,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(60),
                        ),
                        InkWell(
                            onTap: (){
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginPage()),(route)=>false);
                            },
                            child: listProfile(Icons.logout_outlined, "Logout"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getProportionateScreenWidth(130),
            height: getProportionateScreenHeight(130),
            margin: EdgeInsets.only(top: getProportionateScreenHeight(105)),
            decoration:
                BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
}
