import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/product_desc_page.dart';
import 'package:foodgroup/size_config.dart';

import 'data.dart';

class SearchPage extends StatefulWidget {
   const SearchPage({Key? key,required this.searchHint}) : super(key: key);
  final String searchHint;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with SingleTickerProviderStateMixin {

  List<MenuProduct> menuListPromoData = [];
  TabController? _tabController;
final TextEditingController _searchController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  final List<String> _listSort = [
    "Terkait",
    "Postingan Terbaru",
    "Jarak",
    "Harga: Terendah",
    "Harga: Tertinggi",
  ];

  final List<String> _listKategori = [
    "Promo",
    "Beras",
    "Daging",
    "Sayuran",
    "Ikan",
    "Buah - buahan",
    "Bumbu dapur",
    "Susu dan telur",
    "Borongan"
  ];

  List<bool> _isCheckedSort = [];
  List<bool> _isCheckedKategori = [];

  @override
  void initState() {
    _isCheckedSort = List<bool>.filled(_listSort.length, false);
    _isCheckedKategori = List<bool>.filled(_listKategori.length, false);
    _tabController = TabController(length: 3, vsync: this);
    menuListPromoData = getMenuPromo();
    // TODO: implement initState
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_outlined,
            size: getProportionateScreenWidth(30),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(20)),
            child: InkWell(
                onTap: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                child: Icon(
                  Icons.filter_alt_outlined,
                  size: getProportionateScreenWidth(30),
                )),
          )
        ],
        title: Container(
          color: Colors.white,
          height: getProportionateScreenHeight(35),
          child: TextFormField(
            controller:_searchController,
            style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: getProportionateScreenWidth(15)),
            cursorColor: Colors.grey.shade600,
            decoration: InputDecoration(
                // focusColor: Colors.grey.shade600,
                prefixIcon: Icon(
                  Icons.search,
                  color: primaryColor,
                ),
                hintText: widget.searchHint,
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                    left: getProportionateScreenWidth(5),
                    bottom: getProportionateScreenHeight(10))),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          width: getProportionateScreenWidth(400),
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: primaryColor,
                  height: getProportionateScreenHeight(105),
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(65),
                      left: getProportionateScreenWidth(20)),
                  child: Text(
                    "Filter",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(18)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(20),
                      top: getProportionateScreenHeight(20)),
                  child: Text(
                    "Rentang Harga",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(14),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(20),
                      top: getProportionateScreenHeight(15)),
                  child: Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(25),
                        width: getProportionateScreenWidth(90),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: primaryColor, width: 1),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(5))),
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: getProportionateScreenWidth(12)),
                          cursorColor: Colors.grey.shade600,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "min",
                              hintStyle: TextStyle(
                                  fontSize: getProportionateScreenWidth(12)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(10),
                                  bottom: getProportionateScreenHeight(12))),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Text(
                        "Sampai",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(13)),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Container(
                        height: getProportionateScreenHeight(25),
                        width: getProportionateScreenWidth(90),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: primaryColor, width: 1),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(5))),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: getProportionateScreenWidth(12)),
                          cursorColor: Colors.grey.shade600,
                          decoration: InputDecoration(
                              hintText: "max",
                              hintStyle: TextStyle(
                                  fontSize: getProportionateScreenWidth(12)),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(10),
                                  bottom: getProportionateScreenHeight(12))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(20),
                      top: getProportionateScreenHeight(15)),
                  child: Text(
                    "Sortiran",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _listSort.length,
                  itemExtent: 33,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return Theme(
                      data: ThemeData(unselectedWidgetColor: primaryColor),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(
                            left: getProportionateScreenWidth(10), top: 0),
                        // subtitle: Text("tuu"),
                        // secondary: Text("hahah"),
                        title: Text(_listSort[index]),
                        value: _isCheckedSort[index],
                        dense: true,
                        selectedTileColor: primaryColor,
                        // checkColor: primaryColor,
                        // isThreeLine: true,
                        // selected: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: primaryColor,
                        onChanged: (val) {
                          setState(
                            () {
                              if (_isCheckedSort[index] == true) {
                                _isCheckedSort[index] = false;
                              } else {
                                if (_isCheckedSort.contains(true)) {
                                  print("ada yang true");
                                  // SnackBar(content: Text("hanya 1 item"));
                                  // void showInSnackBar(String value) {
                                  //   _scaffoldKey.currentState!.showSnackBar( SnackBar(content:  Text(value)));
                                  // }
                                  // showInSnackBar("sort 1 item");
                                   void showSnackBarAsBottomSheet(BuildContext context, String message)
                                  {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      barrierColor: const Color.fromRGBO(0, 0, 0, 0),
                                      builder: (BuildContext context) {
                                        Future.delayed(const Duration(seconds: 5), () {
                                          try {
                                            Navigator.pop(context);
                                          } on Exception {}
                                        });
                                        return Container(
                                            color: Colors.grey.shade800,
                                            padding: const EdgeInsets.all(12),
                                            child: Wrap(children: [
                                              Center(
                                                child: Text(
                                                  message,),
                                              ),

                                            ]));
                                      },
                                    );
                                  }
                                  showSnackBarAsBottomSheet(context, "hanya satu 1 item saja");
                                  // Dialog(
                                  //   child: Text("hanya satu item saja"),
                                  //   backgroundColor: Colors.red,
                                  //   elevation: 20,
                                  // );
                                } else {
                                  print("salah");
                                  _isCheckedSort[index] = val!;
                                }
                              }
                              print(_isCheckedSort[index]);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(20),
                      top: getProportionateScreenHeight(15)),
                  child: Text(
                    "Kategori",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                ),
                ListView.builder(
                  itemExtent: 33,
                  shrinkWrap: true,
                  itemCount: _listKategori.length,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return Theme(
                      data: ThemeData(unselectedWidgetColor: primaryColor),
                      child: CheckboxListTile(
                        contentPadding: EdgeInsets.only(
                            left: getProportionateScreenWidth(10),
                            top: 0,
                            bottom: 0),
                        // subtitle: Text("tuu"),
                        // secondary: Text("hahah"),
                        title: Text(_listKategori[index]),
                        value: _isCheckedKategori[index],
                        dense: true,
                        selectedTileColor: primaryColor,
                        // checkColor: primaryColor,
                        // isThreeLine: true,
                        // selected: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: primaryColor,

                        onChanged: (val) {
                          setState(
                            () {
                              if (_isCheckedKategori[index] == true) {
                                _isCheckedKategori[index] = false;
                              } else {
                                _isCheckedKategori[index] = val!;
                                // if (_isCheckedKategori.contains(true)) {
                                //   print("benar");
                                // } else {
                                //   print("salah");
                                // }
                              }
                              // print(_isCheckedKategori[index]);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10)),
                        height: getProportionateScreenHeight(35),
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor)),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              "KEMBALI",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: getProportionateScreenWidth(15)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(
                            right: getProportionateScreenWidth(10)),
                        height: getProportionateScreenHeight(35),
                        decoration: BoxDecoration(color: primaryColor),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              "SIMPAN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: getProportionateScreenWidth(15)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(100),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: getProportionateScreenHeight(40),
            color: Colors.white,
            child: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                      color: primaryColor,
                      width: getProportionateScreenWidth(3)),
                  insets: EdgeInsets.fromLTRB(
                    getProportionateScreenWidth(30),
                    getProportionateScreenHeight(0),
                    getProportionateScreenWidth(30),
                    getProportionateScreenHeight(0),
                  ),
                ),
                controller: _tabController,
                labelStyle:
                    TextStyle(fontSize: getProportionateScreenWidth(15)),
                // unselectedLabelColor: Colors.black,
                labelColor: primaryColor,
                unselectedLabelColor: Colors.grey.shade600,
                tabs: const [
                  Tab(
                    child: Text("Terkait"),
                  ),
                  // second tab [you can add an icon using the icon property]
                  Tab(
                    child: Text("Terdekat"),
                  ),
                  Tab(
                    child: Text("Termurah"),
                  ),
                ]),
          ),
          Divider(
            color: colorBackgorundGray,
            height: getProportionateScreenHeight(12),
            thickness: getProportionateScreenHeight(12),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height -
                getProportionateScreenHeight(160),
            color: Colors.red,
            child: TabBarView(controller: _tabController, children: [
              Container(
                color: Colors.white,
                child: ListView.builder(
                    itemCount: menuListPromoData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDescPage()));
                        },
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
                                      image: DecorationImage(
                                        fit:BoxFit.fill,
                                        image: AssetImage(menuListPromoData[index].img)
                                      )
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    height: getProportionateScreenHeight(76),
                                    width: MediaQuery.of(context).size.width -
                                        getProportionateScreenWidth(130),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          menuListPromoData[index].pruduct,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        Text(
                                          menuListPromoData[index].price,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13),
                                              color: Colors.orange),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(20),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size:
                                                        getProportionateScreenWidth(
                                                            15),
                                                  ),
                                                  Text(
                                                    menuListPromoData[index].range,
                                                    style: TextStyle(
                                                        fontSize:
                                                            getProportionateScreenWidth(
                                                                10)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Icon(
                                              Icons.favorite_outlined,
                                              size: getProportionateScreenWidth(18),
                                              color:menuListPromoData[index].favorite == true ? Colors.red:Colors.grey,
                                            )
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
                      );
                    }),
              ),
              Container(
                color: Colors.white,
                child: ListView.builder(
                    itemCount: menuListPromoData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDescPage()));
                        },
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
                                      image: DecorationImage(
                                        fit:BoxFit.fill,
                                        image: AssetImage(menuListPromoData[index].img)
                                      )
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    height: getProportionateScreenHeight(76),
                                    width: MediaQuery.of(context).size.width -
                                        getProportionateScreenWidth(130),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          menuListPromoData[index].pruduct,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        Text(
                                          menuListPromoData[index].price,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13),
                                              color: Colors.orange),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(20),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size:
                                                        getProportionateScreenWidth(
                                                            15),
                                                  ),
                                                  Text(
                                                    menuListPromoData[index].range,
                                                    style: TextStyle(
                                                        fontSize:
                                                            getProportionateScreenWidth(
                                                                10)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Icon(
                                              Icons.favorite_outlined,
                                              size: getProportionateScreenWidth(18),
                                              color:menuListPromoData[index].favorite == true ? Colors.red:Colors.grey,
                                            )
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
                      );
                    }),
              ),
              Container(
                color: Colors.white,
                child: ListView.builder(
                    itemCount: menuListPromoData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDescPage()));
                        },
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
                                      image: DecorationImage(
                                        fit:BoxFit.fill,
                                        image: AssetImage(menuListPromoData[index].img)
                                      )
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    height: getProportionateScreenHeight(76),
                                    width: MediaQuery.of(context).size.width -
                                        getProportionateScreenWidth(130),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          menuListPromoData[index].pruduct,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13)),
                                        ),
                                        Text(
                                          menuListPromoData[index].price,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13),
                                              color: Colors.orange),
                                        ),
                                        SizedBox(
                                          height:
                                              getProportionateScreenHeight(20),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size:
                                                        getProportionateScreenWidth(
                                                            15),
                                                  ),
                                                  Text(
                                                    menuListPromoData[index].range,
                                                    style: TextStyle(
                                                        fontSize:
                                                            getProportionateScreenWidth(
                                                                10)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Icon(
                                              Icons.favorite_outlined,
                                              size: getProportionateScreenWidth(18),
                                              color:menuListPromoData[index].favorite == true ? Colors.red:Colors.grey,
                                            )
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
                      );
                    }),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
