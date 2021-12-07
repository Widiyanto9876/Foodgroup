import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/pesan_page.dart';
import 'package:foodgroup/profile_toko_page.dart';
import 'package:foodgroup/size_config.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

import 'chat_page.dart';

class ProductDescPage extends StatefulWidget {
  const ProductDescPage({Key? key}) : super(key: key);

  @override
  _ProductDescPageState createState() => _ProductDescPageState();
}

class _ProductDescPageState extends State<ProductDescPage> {
  final List<Widget> imageList = [
    Container(
      height: getProportionateScreenHeight(400),
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
              ))),
    ),
    Container(
      height: getProportionateScreenHeight(400),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
              ))),
    ),
    Container(
      height: getProportionateScreenHeight(400),
      width: double.infinity,
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
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = imgList
      .map((item) => Image.network(
            item,
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: getProportionateScreenHeight(600),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                // enlargeCenterPage: true,
                aspectRatio: 2.0,
                height: getProportionateScreenHeight(430),
                viewportFraction: 2,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(365)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: (Theme.of(context).brightness == Brightness.dark
                        //         ? Colors.white
                        //         : Colors.black)
                        //     .withOpacity(_current == entry.key ? 0.9 : 0.4)
                        color: _current == entry.key
                            ? primaryColor
                            : Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
          // GFCarousel(
          //     autoPlay: true,
          //     pagination: true,
          //     viewportFraction: 1.0,
          //     passiveIndicator: Colors.white,
          //     activeIndicator: primaryColor,
          //     height: getProportionateScreenHeight(400),
          //     pagerSize: 15,
          //     initialPage: 4,
          //
          //     items: imageList),
          SafeArea(
            minimum: EdgeInsets.only(
                top: getProportionateScreenHeight(30),
                left: getProportionateScreenWidth(30),
                right: getProportionateScreenWidth(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                    size: getProportionateScreenWidth(30),
                  ),
                ),
                Icon(
                  Icons.favorite_outlined,
                  color: Colors.white,
                  size: getProportionateScreenWidth(30),
                ),
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                top: getProportionateScreenHeight(20)),
            margin: EdgeInsets.only(top: getProportionateScreenHeight(395)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(getProportionateScreenHeight(30)),
                    topLeft:
                        Radius.circular(getProportionateScreenHeight(30)))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daging",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: getProportionateScreenWidth(13)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(13),
                ),
                Text(
                  "Daging Ayam Fresh",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getProportionateScreenWidth(15)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(13),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nos",
                  style: TextStyle(fontSize: getProportionateScreenWidth(13)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(18),
                ),
                Text(
                  "Harga",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: getProportionateScreenWidth(15)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  "Rp 7.500",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: getProportionateScreenWidth(17)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Row(
                  children: [
                    Container(
                      width: getProportionateScreenHeight(50),
                      height: getProportionateScreenWidth(50),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(30),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama Toko",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(15)),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(8),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileTokoPage()));
                          },
                          child: Text("Lihat Profile",
                              style: TextStyle(
                                  color: Colors.green.shade900,
                                  decoration: TextDecoration.underline,
                                  fontSize: getProportionateScreenWidth(12))),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  T4_chatItem()));
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    height: getProportionateScreenHeight(
                        getProportionateScreenHeight(50)),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10))),
                    child: Center(
                      child: Text(
                        "CHAT PENJUAL",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(18)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
