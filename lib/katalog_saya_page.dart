import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/data.dart';

import 'form_jual_page.dart';
import 'size_config.dart';

class KatalogSayaPage extends StatefulWidget {
  const KatalogSayaPage({Key? key}) : super(key: key);

  @override
  _KatalogSayaPageState createState() => _KatalogSayaPageState();
}

class _KatalogSayaPageState extends State<KatalogSayaPage> {

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  List<MenuKatalog> menuKatalog = [];


  @override
  void initState() {
    menuKatalog = getMenuKatalog();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: const Color.fromRGBO(236, 238, 239, 1),
      appBar: AppBar(
        title: const Text("Katalog Saya"),
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
          itemCount: menuKatalog.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(10),
                              horizontal: getProportionateScreenWidth(20)),
                          child: Row(
                            children: [
                              Container(
                                height: getProportionateScreenHeight(70),
                                width: getProportionateScreenWidth(70),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        getProportionateScreenWidth(10)),
                                height: getProportionateScreenHeight(85),
                                width: MediaQuery.of(context).size.width -
                                    getProportionateScreenWidth(130),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          menuKatalog[index].pruduct,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      menuKatalog[index].price,
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(13),
                                          color: Colors.orange),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(20),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.visibility_outlined,
                                                size:
                                                    getProportionateScreenWidth(
                                                        15),
                                              ),
                                              SizedBox(
                                                width:
                                                    getProportionateScreenWidth(
                                                        8),
                                              ),
                                              Text(
                                                "Dilihat: ${menuKatalog[index].seen}",
                                                style: TextStyle(
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            10)),
                                              ),
                                              SizedBox(
                                                width:
                                                    getProportionateScreenWidth(
                                                        20),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Container(
                                          width: getProportionateScreenWidth(2),
                                          height:
                                              getProportionateScreenHeight(20),
                                          decoration:
                                              BoxDecoration(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width:
                                              getProportionateScreenWidth(20),
                                        ),
                                        SizedBox(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.favorite_outlined,
                                                size:
                                                    getProportionateScreenWidth(
                                                        15),
                                              ),
                                              SizedBox(
                                                width:
                                                    getProportionateScreenWidth(
                                                        8),
                                              ),
                                              Text(
                                                "Disukai: ${menuKatalog[index].like}",
                                                style: TextStyle(
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            10)),
                                              ),
                                              SizedBox(
                                                width:
                                                    getProportionateScreenWidth(
                                                        20),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: getProportionateScreenHeight(2),
                          color: Colors.grey.shade400,
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: getProportionateScreenHeight(0),
                    right: getProportionateScreenWidth(20),
                    child: PopupMenuButton(
                      iconSize: getProportionateScreenWidth(20),
                      color: Colors.white,
                      icon: Icon(
                        Icons.more_vert_outlined,
                        size: getProportionateScreenWidth(23),
                      ),
                      onSelected: (result){
                        if(result == 0){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FormJualPage()));
                        }
                      },
                      itemBuilder: (BuildContext context) {
                        return const [
                          PopupMenuItem(
                            value: 0,
                            child: Text('Edit'),
                          ),
                          PopupMenuItem(
                            value: 1,
                            child: Text('Delete'),
                          )
                        ];
                      },
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
