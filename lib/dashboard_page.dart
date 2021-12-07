import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/jual_page.dart';
import 'package:foodgroup/pesan_page.dart';
import 'package:foodgroup/profile_user_page.dart';

import 'chat_page.dart';
import 'menu_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  Widget currentScreen = MenuPage();
  int currentTab = 0;
  List<Widget> screens = [];
  final PageStorageBucket bucket = PageStorageBucket();

  Widget roundedButton(String buttonLabel, Color bgColor, Color textColor) {
    var loginBtn =  Container(
      padding: EdgeInsets.all(5.0),
      alignment: FractionalOffset.center,
      decoration:  BoxDecoration(
        color: bgColor,
        borderRadius:  BorderRadius.all(const Radius.circular(10.0)),
        boxShadow:const <BoxShadow>[
          BoxShadow(
            color:  Color(0xFF696969),
            offset: Offset(1.0, 6.0),
            blurRadius: 0.001,
          ),
        ],
      ),
      child: Text(
        buttonLabel,
        style:  TextStyle(
            color: textColor, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
    return loginBtn;
  }
  @override
  void initState() {
    // TODO: implement initState
changeColor = false;
    screens =const <Widget>[
      MenuPage(),
      JualPage(),
      PesanPage(),
      ProfileUserPage()

    ] ;
    super.initState();
  }
  Future<bool> _onBackPress()async{
    showDialog(
      context: context,
      builder: (context) =>  AlertDialog(
        title:  Text('Are you sure?'),
        content:  Text('Do you want to exit an App'),
        actions: <Widget>[
          GestureDetector(
            onTap: () => Navigator.of(context).pop([false]),
            child: roundedButton("No", const Color(0xFF167F67),
                const Color(0xFFFFFFFF)),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () =>exit(0),
            child: roundedButton(" Yes ", const Color(0xFF167F67),
                const Color(0xFFFFFFFF)),
          ),
        ],
      ),
    ) ;
    return true;

  }
  bool? changeColor;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPress,
        child: Scaffold(
          // backgroundColor: Colors.blueAccent,

          body: PageStorage(child: currentScreen, bucket: bucket,),
          bottomNavigationBar:  Container(
            // height: 80.0,
            color: Colors.white,
            // padding:  EdgeInsets.only(top: 20.0),
            child:  BottomNavigationBar(
                selectedLabelStyle: TextStyle(fontSize: 10),
                unselectedLabelStyle: TextStyle(fontSize: 10,),
                type: BottomNavigationBarType.fixed,
                selectedItemColor: primaryColor,
                currentIndex: currentTab,
                onTap: (i){
                  setState(() {
                    currentTab = i;
                    currentScreen = screens[i];
                    if(i == 2){
                      changeColor = true;
                      print("index $i");
                    }else{
                      changeColor = false;
                    }
                  });
                },
                items:  [
                 const BottomNavigationBarItem(
                      icon:  Icon(CupertinoIcons.home,size: 20,),
                      label: 'Home',
                      backgroundColor: Colors.black
                  ),
                 const BottomNavigationBarItem(
                    icon:  Icon(CupertinoIcons.add,size:20,),
                    label: 'Jual',
                  ),
                  BottomNavigationBarItem(
                      icon: Stack(
                        children: [
                          Icon(Icons.mail_outlined),
                          Positioned(
                            right: 0,
                            child:  Container(
                              padding: EdgeInsets.all(1),
                              decoration:  BoxDecoration(
                                color:changeColor == false ? Colors.grey.shade600: primaryColor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints:const BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                              child:const  Text(
                                '3',
                                style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                      label:'Chat',
                  ),
                 const BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_outlined,size:20),
                    label: 'Akun Saya',
                  ),
                ]),
          ),
        )
      // PersistentTabView(
      //   context,
      //   controller: _controller,
      //   screens: _buildScreens(),
      //   items: _navBarsItems(),
      //   confineInSafeArea: true,
      //   backgroundColor: Colorshite, // Default is Colorshite.
      //   handleAndroidBackButtonPress: true, // Default is true.
      //   resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      //   stateManagement: true,
      //   hideNavigationBar: _navHide,
      //   hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      //   decoration: NavBarDecoration(
      //     borderRadius: BorderRadius.circular(10.0),
      //     colorBehindNavBar: Colorshite,
      //   ),
      //   popAllScreensOnTapOfSelectedTab: true,
      //   popActionScreens: PopActionScreensType.all,
      //   itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
      //     duration: Duration(milliseconds: 200),
      //     curve: Curves.ease,
      //   ),
      //   screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
      //     animateTabTransition: true,
      //     curve: Curves.ease,
      //     duration: Duration(milliseconds: 200),
      //   ),
      //   navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
      // ),
    );
  }
}
