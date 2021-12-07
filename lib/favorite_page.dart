import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';

import 'product_desc_page.dart';
import 'size_config.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Saya"),
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
          itemCount: 5,
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
                                "Daging Ayam Segar",
                                style: TextStyle(
                                    fontSize:
                                    getProportionateScreenWidth(
                                        13)),
                              ),
                              Text(
                                "Rp 25.000",
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
                                          "745m",
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
                                    size: getProportionateScreenWidth(
                                        18),
                                    color: Colors.red,
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
    );
  }
}
