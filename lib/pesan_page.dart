import 'package:flutter/material.dart';
import 'package:foodgroup/chat_page.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/size_config.dart';

class PesanPage extends StatefulWidget {
  const PesanPage({Key? key}) : super(key: key);

  @override
  _PesanPageState createState() => _PesanPageState();
}

class _PesanPageState extends State<PesanPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final bodyGlobalKey = GlobalKey();
  ScrollController? _scrollController;
  bool? fixedScroll;

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    // _scrollController!.addListener(_scrollListener);
    _tabController = TabController(length: 3, vsync: this, );
    // _tabController!.addListener(_handleTabSelection);
    // TODO: implement initState
    super.initState();
  }
  _buildTabContext(int lineCount) => ListView.builder(
    physics: const ClampingScrollPhysics(),
    itemCount: lineCount,
    itemBuilder: (BuildContext context, int index) {
      return Text('some content');
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        floatHeaderSlivers: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        headerSliverBuilder: (context, value) {
          return [
            // SliverToBoxAdapter(child: _buildCarousel()),
            SliverToBoxAdapter(
              key: widget.key,
              child:
              Container(

                color: primaryColor,
                width: double.infinity,
                // height: getProportionateScreenHeight(120),
                padding: EdgeInsets.only(top: getProportionateScreenHeight(70)),

                child:
                TabBar(
                  automaticIndicatorColorAdjustment: true,

                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: getProportionateScreenWidth(3)),
                    insets: EdgeInsets.fromLTRB(
                      getProportionateScreenWidth(0),
                      getProportionateScreenHeight(0),
                      getProportionateScreenWidth(0),
                      getProportionateScreenHeight(0),
                    ),
                  ),
                  controller: _tabController,
                  labelStyle:
                  TextStyle(fontSize: getProportionateScreenWidth(15)),
                  // unselectedLabelColor: Colors.black,
                  labelColor: primaryColor,
                  unselectedLabelColor: Colors.grey.shade600,
                  // isScrollable: true,
                  tabs: const [

                    Tab(
                      child: Text(
                        "SEMUA",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "MEMBELI",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "MENJUAL",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              color: Colors.white,
              child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>T4_chatItem()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(5),
                                horizontal: getProportionateScreenWidth(20)),
                            child: Row(
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(60),
                                  width: getProportionateScreenWidth(60),
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(220),
                                  height: getProportionateScreenHeight(60),
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "TOKO SERBA DAGING ",
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                16)),
                                      ),
                                      Text(
                                        "Hello Apakah barang masih ada? apa saja ya",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                12),
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(50),
                                  height: getProportionateScreenHeight(60),
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "11.34 ",
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                13)),
                                      ),
                                      Container(
                                        // width:
                                        //     getProportionateScreenWidth(20),
                                        // height:
                                        //     getProportionateScreenHeight(20),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: primaryColor),
                                        padding: EdgeInsets.all(
                                            getProportionateScreenWidth(5)),
                                        child: Text(
                                          "9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                              getProportionateScreenWidth(
                                                  14)),
                                        ),
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
                  padding: EdgeInsets.all(0),
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>T4_chatItem()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(5),
                                horizontal: getProportionateScreenWidth(20)),
                            child: Row(
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(60),
                                  width: getProportionateScreenWidth(60),
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(220),
                                  height: getProportionateScreenHeight(60),
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "TOKO SERBA DAGING ",
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                16)),
                                      ),
                                      Text(
                                        "Hello Apakah barang masih ada? apa saja ya",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                12),
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(50),
                                  height: getProportionateScreenHeight(60),
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "11.34 ",
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                13)),
                                      ),
                                      Container(
                                        // width:
                                        //     getProportionateScreenWidth(20),
                                        // height:
                                        //     getProportionateScreenHeight(20),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: primaryColor),
                                        padding: EdgeInsets.all(
                                            getProportionateScreenWidth(5)),
                                        child: Text(
                                          "9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                              getProportionateScreenWidth(
                                                  14)),
                                        ),
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
                  padding: EdgeInsets.all(0),
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return InkWell(

                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>T4_chatItem()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(5),
                                horizontal: getProportionateScreenWidth(20)),
                            child: Row(
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(60),
                                  width: getProportionateScreenWidth(60),
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(220),
                                  height: getProportionateScreenHeight(60),
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "TOKO SERBA DAGING ",
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                16)),
                                      ),
                                      Text(
                                        "Hello Apakah barang masih ada? apa saja ya",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                12),
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: getProportionateScreenWidth(50),
                                  height: getProportionateScreenHeight(60),
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(10)),
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "11.34 ",
                                        style: TextStyle(
                                            fontSize:
                                            getProportionateScreenWidth(
                                                13)),
                                      ),
                                      Container(
                                        // width:
                                        //     getProportionateScreenWidth(20),
                                        // height:
                                        //     getProportionateScreenHeight(20),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: primaryColor),
                                        padding: EdgeInsets.all(
                                            getProportionateScreenWidth(5)),
                                        child: Text(
                                          "9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                              getProportionateScreenWidth(
                                                  14)),
                                        ),
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
            ],
        ),
      ),
    );
  }
}
