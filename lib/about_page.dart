import 'package:flutter/material.dart';

import 'constanta.dart';
import 'size_config.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(210),
            child: Center(
              child: Image.asset("assets/images/logo.png"),
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
            padding: EdgeInsets.only(top: getProportionateScreenHeight(50)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Tentang Food Group",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: getProportionateScreenWidth(25)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(30),
                      left: getProportionateScreenWidth(30),
                      right: getProportionateScreenWidth(30)),
                  child: Text(
                    "FoodGroup merupakan aplikasi mobile yang bertujuan untuk membantu kegiatan distribusi pangan di tengah pandemi agar ketahanan pangan tetap terjaga dan penjualan hasil produksi dari para produsen pangan tetap berjalan dengan menjembatani para pelaku yang terlibat dalam proses kegiatan distribusi pangan yaitu konsumen, produsen pangan dan distributor.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      height: 1.8,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenWidth(15)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
