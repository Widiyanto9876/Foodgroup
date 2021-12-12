import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/favorite_page.dart';
import 'package:foodgroup/product_desc_page.dart';
import 'package:foodgroup/search_page.dart';
import 'package:foodgroup/size_config.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

import 'data.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<MenuHomeModel> menuListData = [];

  List<MenuProduct> menuListProductData = [];
  final List<Widget> imageList = [
    Container(
      width: double.infinity,
      height: getProportionateScreenHeight(80),
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
              ))),
    ),
    Container(
      width: double.infinity,
      height: getProportionateScreenHeight(80),
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
              ))),
    ),
    Container(
      width: double.infinity,
      height: getProportionateScreenHeight(80),
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
              ))),
    ),
    // Image.network(
    //   "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    // ),
    // Image.network(
    //   "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    // ),
  ];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    menuListData = getMenuHomePage();
    menuListProductData = getMenuProduct();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 238, 239, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: primaryColor,
              width: double.infinity,
              child: SafeArea(
                top: true,
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: getProportionateScreenWidth(25),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          const Text(
                            "Lokasi Kamu",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: SizeConfig.screenWidth - 80,
                            height: getProportionateScreenHeight(40),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              controller: _searchController,
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(15)),
                              obscureText: false,
                              onFieldSubmitted: (val) {
                                print(val);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SearchPage(searchHint: val)));
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Cari Disini..",
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: getProportionateScreenWidth(25),
                                    color: primaryColor,
                                  ),
                                  hintStyle: TextStyle(
                                      fontSize:
                                          getProportionateScreenWidth(15)),
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.only(
                                      top: getProportionateScreenHeight(3),
                                      left: getProportionateScreenWidth(10))),
                            ),
                            // margin: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FavoritePage()));
                            },
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: getProportionateScreenWidth(30),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GFCarousel(
                autoPlay: true,
                pagination: true,
                viewportFraction: 1.0,
                aspectRatio: 2,
                passiveIndicator: Colors.white,
                activeIndicator: primaryColor,
                items: imageList),
            Container(
              color: Colors.white,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(20),
                        top: getProportionateScreenHeight(15)),
                    child: Text(
                      "Kategori",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(16)),
                    ),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(40),
                        vertical: getProportionateScreenHeight(10)),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 15,
                            childAspectRatio: 0.8),
                    itemCount: menuListData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchPage(
                                    searchHint:
                                    menuListData[index].eventType,
                                  )));
                        },
                        child: Column(
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
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Image.asset(
                                        menuListData[index].imgAssetPath,
                                        height:
                                            getProportionateScreenHeight(40),
                                        width: getProportionateScreenWidth(40),
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
                                  fontSize: getProportionateScreenWidth(10),
                                  // fontFamily: "Muli",
                                  letterSpacing: 1.0,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  )
                ],
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenHeight(5)),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1),
              itemCount: menuListProductData.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>const ProductDescPage()));
                  },
                  child: Container(
                    height: getProportionateScreenHeight(300),
                    width: getProportionateScreenWidth(100),
                    color: Colors.red,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 7,
                            child: Container(
                              color: Colors.grey,
                              // child: Image.network("src"),
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              width: double.infinity,
                              color: Colors.white,
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    menuListProductData[index].pruduct,
                                    style: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(11)),
                                  ),
                                  Text(
                                    menuListProductData[index].price,
                                    style: TextStyle(
                                        fontSize: getProportionateScreenWidth(11),
                                        color: Colors.orange),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children:  [
                                      SizedBox(),
                                      Icon(
                                        Icons.favorite,
                                        color:menuListProductData[index].favorite == true ?Colors.red:Colors.grey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
