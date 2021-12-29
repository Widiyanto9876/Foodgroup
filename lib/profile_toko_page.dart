import 'package:flutter/material.dart';
import 'package:foodgroup/size_config.dart';

import 'constanta.dart';

class ProfileTokoPage extends StatefulWidget {
  const ProfileTokoPage({Key? key}) : super(key: key);

  @override
  _ProfileTokoPageState createState() => _ProfileTokoPageState();
}

class _ProfileTokoPageState extends State<ProfileTokoPage> {
  String status = "Follow";

  List<String> _imgList = [
    "assets/product/apel.png",
    "assets/product/ayam.png",
    "assets/product/bawangp.png",
    "assets/product/bawangm.png",
    "assets/product/sapi.png",
    "assets/product/tomat.png",
    "assets/product/wortel.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              // height: getProportionateScreenHeight(230),
              padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
              color: const Color.fromRGBO(173, 180, 185, 1),
              child: Column(
                children: [
                  SafeArea(
                    minimum:
                        EdgeInsets.only(left: getProportionateScreenWidth(20)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                          size: getProportionateScreenWidth(30),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        Container(
                          height: getProportionateScreenHeight(35),
                          width: getProportionateScreenWidth(250),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 0.25),
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: getProportionateScreenWidth(15)),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                // focusColor: Colors.grey.shade600,
                                hintText: "Cari di Toko",
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: getProportionateScreenWidth(15)),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(5),
                                    bottom: getProportionateScreenHeight(13))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: getProportionateScreenWidth(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: getProportionateScreenHeight(50),
                              height: getProportionateScreenWidth(50),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/people/avatar1.png"))
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(10),
                            ),
                            Text(
                              "Nama Toko",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(14)),
                            )
                          ],
                        ),
                        Container(
                          color: Colors.transparent,
                          height: getProportionateScreenHeight(80),
                          width: getProportionateScreenWidth(190),
                          margin: EdgeInsets.only(
                              right: getProportionateScreenWidth(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  // SizedBox(),
                                  Text(
                                    "39",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                        fontSize:
                                            getProportionateScreenWidth(18)),
                                  ),
                                  Text("|"),
                                  Text("243",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                        getProportionateScreenWidth(18)),),
                                  // SizedBox(),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("FOLLOWING",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize:
                                        getProportionateScreenWidth(12)),),
                                  Text("FOLOWERS",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize:
                                        getProportionateScreenWidth(12)),),
                                ],
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(status == "Follow"){
                                      status = "Unfollow";
                                    } else{
                                      status = "Follow";
                                    }
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: getProportionateScreenHeight(25),
                                  decoration: BoxDecoration(
                                    color:status == "Follow"? primaryColor: Color.fromRGBO(196, 196, 196, 1),
                                    border: Border.all(
                                      width:status == "Follow"?0: 1,
                                      color: primaryColor
                                    )

                                  ),
                                  child: Center(
                                    child: Text(status,
                                      style: TextStyle(
                                        color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize:
                                          getProportionateScreenWidth(13)),),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              color: Color.fromRGBO(236, 238, 239, 1),
              margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(getProportionateScreenWidth(20)),
                    child: Text("Produk"),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(5)),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.8),
                    itemCount: _imgList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: getProportionateScreenHeight(300),
                        width: getProportionateScreenWidth(100),
                        color: Colors.red,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 7,
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset(_imgList[index],fit: BoxFit.fill),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white,
                                  padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Nama Product / Kilo",style: TextStyle(fontSize: getProportionateScreenWidth(11)),),
                                      Text("Rp 7.500",style: TextStyle(fontSize: getProportionateScreenWidth(11),color: Colors.orange),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:const [
                                          SizedBox(),
                                          Icon(Icons.favorite,
                                            color: Colors.red,)
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
