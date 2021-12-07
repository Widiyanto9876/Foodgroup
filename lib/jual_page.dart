import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/form_jual_page.dart';
import 'package:foodgroup/menu_page.dart';
import 'package:foodgroup/search_page.dart';
import 'package:foodgroup/size_config.dart';

import 'data.dart';

class JualPage extends StatefulWidget {
  const JualPage({Key? key}) : super(key: key);

  @override
  _JualPageState createState() => _JualPageState();
}

class _JualPageState extends State<JualPage> {
  List<MenuHomeModel> menuListData = [];

  @override
  void initState() {
    menuListData = getMenuJualPage();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title:  Text(
          "Mau jual apa hari ini",
          style: TextStyle(color: Colors.white,fontSize: getProportionateScreenWidth(20)),
        ),
        leading: Icon(Icons.eleven_mp_sharp,color: Colors.transparent,),
        elevation: 0,
      ),
      backgroundColor: colorBackgorundGray,
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(50)),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1),
        itemCount: menuListData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              print(menuListData[index].jenis);
              if (menuListData[index].jenis == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FormJualPage()));

              } else if (menuListData[index].jenis == 2) {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>  SearchPage()));

              } else if (menuListData[index].jenis == 3) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MenuPage()));
              } else if (menuListData[index].jenis == 4) {
              } else if (menuListData[index].jenis == 5) {
              } else if (menuListData[index].jenis == 6) {
              } else if (menuListData[index].jenis == 7) {}
            },
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // change container height 65 width 65
                  FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Icon(MdiIcons.createDoc[model.listKategori[index].subKategori[i].icon], size: 50, color: Colors.blue),
                          // SvgPicture.network('http://demo.te.net.id/riset/pospayment/Api/public/Assets/Icons/AmikomPayIcons/Telekomunikasi_P&D.svg', height: 30, width: 30,)
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              menuListData[index].imgAssetPath,
                              height: getProportionateScreenHeight(50),
                              width: getProportionateScreenWidth(50),
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                  Text(
                    menuListData[index].eventType,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        // fontFamily: "Muli",
                        letterSpacing: 1.0,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
