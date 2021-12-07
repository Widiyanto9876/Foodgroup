import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/katalog_saya_page.dart';
import 'package:foodgroup/size_config.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton:
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const KatalogSayaPage()));
        },
        child: SafeArea(
          bottom: true,
          child: Container(
            width: double.infinity,
            height: getProportionateScreenHeight(40),
            margin: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.5)),
            child:const Center(
                child:  Text(
                  "Lihat Kembali Iklan Anda",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.check_circle_outlined,
              color: Colors.white,
              size: getProportionateScreenWidth(300),
            ),
          ),
          Text(
            "SELAMAT!",
            style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: getProportionateScreenWidth(20)),
          ),
          Text(
            "Iklan Anda akan segera ditayangkan.!",
            style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: getProportionateScreenWidth(15)),
          ),
        ],
      ),
    );
  }
}
