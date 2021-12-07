import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class FoodListPage extends StatefulWidget {
  final String title;

  const FoodListPage({Key? key, this.title = 'Food on Promotion'}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  // initialize shimmer loading and reusable widget
  final _reusableWidget = ReusableWidget();

  Timer? _timerDummy;

  List<FoodModel> _foodData = [];

  @override
  void initState() {
    _getData();

    super.initState();
  }

  @override
  void dispose() {
    _timerDummy?.cancel();
    super.dispose();
  }

  void _getData(){
    // this timer function is just for demo, so after 1 second, the shimmer loading will disappear and show the content
    _timerDummy = Timer(Duration(seconds: 1), () {
    });

    /*
    Image Information
    width = 800px
    height = 600px
    ratio width height = 4:3
     */
    _foodData = [
      FoodModel(
          id: 8,
          restaurantName: "Chicken Specialties",
          name: "Chicken Rice Teriyaki",
          image:  "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/8.jpg",
          price: 5,
          discount: 10,
          rating: 4.7,
          distance: 3.9,
          location: "Liberty Avenue"
      ),
      FoodModel(
          id: 6,
          restaurantName: "Bread and Cookies",
          name: "Delicious Croissant",
          image:  "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/6.jpg",
          price: 5,
          discount: 0,
          rating: 4.8,
          distance: 0.9,
          location: "Mapple Street"
      ),
      FoodModel(
          id: 7,
          restaurantName: "Taco Salad Beef Classic",
          name: "Awesome Health",
          image:  "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/7.jpg",
          price: 4.9,
          discount: 10,
          rating: 4.9,
          distance: 1.1,
          location: "Fenimore Street"
      ),
      FoodModel(
          id: 5,
          restaurantName: "Italian Food",
          name: "Chicken Penne With Tomato",
          image:  "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/5.jpg",
          price: 6.5,
          discount: 20,
          rating: 4.6,
          distance: 0.9,
          location: " York Avenue"
      ),
      FoodModel(
          id: 4,
          restaurantName: "Steam Boat Lovers",
          name: "Seafood shabu-shabu",
          image: "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/4.jpg",
          price: 6,
          discount: 20,
          rating: 4.9,
          distance: 0.7,
          location: "Lefferts Avenue"
      ),
      FoodModel(
          id: 3,
          restaurantName: "Salad Stop",
          name: "Sesame Salad",
          image: "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/3.jpg",
          price: 4.8,
          discount: 10,
          rating: 4.3,
          distance: 0.7,
          location: "Empire Boulevard"
      ),
      FoodModel(
          id: 2,
          restaurantName: "Beef Lovers",
          name: "Beef Yakiniku",
          image: "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/2.jpg",
          price: 3.6,
          discount: 20,
          rating: 5,
          distance: 0.6,
          location: "Montgomery Street"
      ),
      FoodModel(
          id: 1,
          restaurantName: "Mr. Hungry",
          name: "Hainam Chicken Rice",
          image:  "https://devkit.ijteknologi.com/assets/images/apps/food_delivery/food/1.jpg",
          price: 5,
          discount: 50,
          rating: 4.9,
          distance: 0.4,
          location: "Crown Street"
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          centerTitle: true,
          title: Text(widget.title, style:TextStyle(
              fontSize: 18,
              color: Colors.black
          )),
          backgroundColor: Colors.white,
          bottom: _reusableWidget.bottomAppBar(),
        ),
        body: RefreshIndicator(
          onRefresh: refreshData,
          child:  ListView.builder(
            itemCount: _foodData.length,
            padding: EdgeInsets.symmetric(vertical: 0),
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return _reusableWidget.buildFoodList(context, index, _foodData);
            },
          ),
        ),
        floatingActionButton: _reusableWidget.fabCart(context),
    );
  }

  Future refreshData() async {
    setState(() {
      _foodData.clear();
      _getData();
    });
  }
}

class FoodModel {
  late int id;
  late String name;
  late String restaurantName;
  late double price;
  late String image;
  double? rating;
  double? distance;
  late int discount;
  late String location;

  FoodModel({required this.id, required this.name, required this.restaurantName, required this.price, required this.image, this.rating, this.distance, required this.discount, required this.location});
}
class ReusableWidget{
  PreferredSizeWidget bottomAppBar(){
    return PreferredSize(
        child: Container(
          color: Colors.grey[100],
          height: 1.0,
        ),
        preferredSize:const Size.fromHeight(1.0));
  }

  Widget createRatingBar({double rating=5, double size=24}){
    if(rating < 0){
      rating = 0;
    } else if(rating>5){
      rating = 5;
    }

    bool _absolute = false;
    int _fullStar = 0;
    int _emptyStar = 0;

    if(rating == 0 || rating == 1 || rating == 2 || rating == 3 || rating == 4 || rating == 5){
      _absolute = true;
    } else {
      double _dec = (rating - int.parse(rating.toString().substring(0,1)));
      if(_dec > 0 && _dec < 1){
        if(_dec >= 0.25 && _dec <= 0.75){
          _absolute = false;
        } else {
          _absolute = true;
          if(_dec < 0.25){
            _emptyStar = 1;
          } else if(_dec > 0.75){
            _fullStar = 1;
          }
        }
      }
    }
    return Row(
      children: [
        for(int i=1;i<=rating+_fullStar;i++) Icon(Icons.star, color: Colors.yellow[700], size: size),
        !_absolute?Icon(Icons.star_half, color: Colors.yellow[700], size: size):const SizedBox.shrink(),
        for(int i=1;i<=(5-rating+_emptyStar);i++) Icon(Icons.star_border, color: Colors.yellow[700], size: size),
      ],
    );
  }

  Widget customNotifIcon({int count=0, Color notifColor=Colors.grey, Color labelColor=Colors.pinkAccent, double notifSize=24, double labelSize=14, String position='right'}) {
    double? posLeft;
    double? posRight = 0;
    if(position == 'left'){
      posLeft = 0;
      posRight = null;
    }
    return Stack(
      children: <Widget>[
        Icon(Icons.notifications, color: notifColor, size: notifSize),
        Positioned(
          left: posLeft,
          right: posRight,
          child: Container(
            padding:const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: labelColor,
              borderRadius: BorderRadius.circular(labelSize),
            ),
            constraints: BoxConstraints(
              minWidth: labelSize,
              minHeight: labelSize,
            ),
            child: Center(
              child: Text(
                count.toString(),
                style:const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget fabCart(context){
    return FloatingActionButton(
      onPressed: () {
      },
      child: Stack(
        children: [
         const Icon(Icons.shopping_bag_outlined, color: Color(0xFF212121), size: 42),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              padding:const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: const Color(0xFF07ac12),
                borderRadius: BorderRadius.circular(14),
              ),
              constraints:const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child:const Center(
                child: Text('3', style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
    );
  }

  Widget divider1(){
    return Divider(height: 0, color: Colors.grey[400]);
  }

  Future _showProgressDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child:const Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }

  // dummy loading
  void startLoading(context, String textMessage, int backToPreviousPageStack){
    _showProgressDialog(context);
    Timer(const Duration(seconds: 2), () {
      Navigator.pop(context);
      _buildShowDialog(context, textMessage, backToPreviousPageStack);
    });
  }

  Future _buildShowDialog(BuildContext context, String textMessage, int backToPreviousPageStack) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)), //this right here
              child: Container(
                padding:const  EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      textMessage,
                      textAlign: TextAlign.center,
                      style:const TextStyle(fontSize: 14, color:  Color(0xff777777)),
                    ),
                   const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) =>  Color(0xFF07ac12),
                            ),
                            overlayColor: MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                )
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);

                            if(backToPreviousPageStack>0){
                              FocusScope.of(context).unfocus(); // hide keyboard when press button
                              for(int i=1;i<=backToPreviousPageStack;i++){
                                Navigator.pop(context);
                              }
                            }
                          },
                          child: const Padding(
                            padding:  EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              'OK',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
  // end dummy loading

  CachedNetworkImage buildCacheNetworkImage({double? width, double? height, url, plColor, imageColor}){
    if(width == 0 && height == 0){
      return CachedNetworkImage(
        placeholder: (context, url) {
          return Container(
            color: plColor==null?Colors.grey[200]:plColor,
          );
        },
        errorWidget: (context, url, error) {
          return Container(
            color: Colors.grey[200],
          );
        },
        imageUrl: url,
        fit: BoxFit.cover,
        color: imageColor==null?null:imageColor,
      );
    } else if(height == 0){
      return CachedNetworkImage(
        placeholder: (context, url) {
          return Container(
            width: width,
            color: plColor==null?Colors.grey[200]:plColor,
          );
        },
        errorWidget: (context, url, error) {
          return Container(
            width: width,
            color: Colors.grey[200],
          );
        },
        imageUrl: url,
        fit: BoxFit.cover,
        width: width,
        color: imageColor==null?null:imageColor,
      );
    } else {
      return CachedNetworkImage(
        placeholder: (context, url) {
          return SizedBox.shrink();
        },
        errorWidget: (context, url, error) {
          return SizedBox.shrink();
        },
        imageUrl: url,
        fit: BoxFit.cover,
        width: width,
        height: height,
        color: imageColor==null?null:imageColor,
      );
    }
  }
  Widget buildFoodList(context, index, data){

    final _globalFunction = GlobalFunction();
    final double boxImageSize = (MediaQuery.of(context).size.width / 4);
    return Column(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: (){
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 14, 16, 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: buildCacheNetworkImage(width: boxImageSize, height: boxImageSize, url: data[index].image)),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index].name, style:const  TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ), maxLines: 1, overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 6),
                      Text(data[index].restaurantName+' - '+data[index].location, style:const TextStyle(
                        fontSize: 13,
                        color: Color(0xFFaaaaaa),
                      ), maxLines: 1, overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange, size: 15),
                          const SizedBox(width: 2),
                          Text(data[index].rating.toString(), style:const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF777777),
                          )),
                          const  SizedBox(width: 6),
                          const Icon(Icons.location_pin, color: Color(0xFFe75f3f), size: 15),
                          const SizedBox(width: 2),
                          Text(data[index].distance.toString()+' miles', style:const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF777777),
                          )),
                        ],
                      ),
                      const SizedBox(height: 12),
                      data[index].discount!=0
                          ? Text('\$ '+_globalFunction.removeDecimalZeroFormat(data[index].price), style:const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough,
                      )) : SizedBox.shrink(),
                      Text('\$ '+_globalFunction.removeDecimalZeroFormat(((100-data[index].discount)*data[index].price/100)), style:const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFe75f3f),
                          fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        (index == data.length - 1)
            ? Wrap()
            : Divider(
          height: 0,
          color: Colors.grey[400],
        )
      ],
    );
  }
  Widget createDefaultLabel(context){
    return Container(
      padding:const EdgeInsets.fromLTRB(8, 2, 8, 2),
      decoration: BoxDecoration(
          color:const Color(0xff01aed6),
          borderRadius: BorderRadius.circular(2)
      ),
      child: Row(
        children:const [
          Text('Default', style: TextStyle(
              color: Colors.white, fontSize: 13
          )),
          SizedBox(
            width: 4,
          ),
          Icon(Icons.done, color: Colors.white, size: 11)
        ],
      ),
    );
  }
}


class GlobalFunction{
  bool validateMobileNumber(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,15}$)';
    RegExp regExp =  RegExp(patttern);
    if (value.length < 8) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  bool validateEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex =  RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  String removeDecimalZeroFormat(double v) {
    NumberFormat formatter = NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(v);
  }

  String formatTime(int timeNum) {
    return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
  }

  Future showProgressDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child:const Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}