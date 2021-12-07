import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodgroup/constanta.dart';
import 'package:foodgroup/size_config.dart';

/// defaultUserName use in a Chat name
const String defaultUserName = "Alisa Hearth";

// ignore: camel_case_types
class T4_chatItem extends StatefulWidget {
  T4_chatItem({Key? key}) : super(key: key);

  _T4_chatItemState createState() => _T4_chatItemState();
}

// ignore: camel_case_types
class _T4_chatItemState extends State<T4_chatItem>
    with TickerProviderStateMixin {
  final List<Msg> _messages = [];
  final TextEditingController _textController = TextEditingController();
  bool _isWriting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      /// body in chat like a list in a message
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
            width: double.infinity,
            color: Colors.white,
            child: SafeArea(
              bottom: false,
              top: true,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: getProportionateScreenWidth(30),
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      Container(
                        height: getProportionateScreenHeight(50),
                        width: getProportionateScreenWidth(50),
                        color: Colors.grey.shade600,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      Text(
                        "NAMA TOKO",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(17)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          "Nama Produk dagangannya",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(14)),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Rp. 15.000",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(14)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(236, 238, 239, 1),
              child: Column(children: <Widget>[
                (_messages.isNotEmpty) ? Text("Hari ini") : SizedBox(),
                Flexible(
                    child:
                        // _messages.length > 0
                        //     ?
                        ListView.builder(
                          reverse: true,
                  itemBuilder: (_, int index) => InkWell(
                      onTap: () {
                        print(_messages);
                        setState(() {
                          _messages.reversed;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          _messages.removeAt(index);
                        });
                      },
                      child: _messages[index]),
                  itemCount: _messages.length,
                  padding: const EdgeInsets.only(right: 15.0, bottom: 10.0,left: 70),
                )
                    // : NoMessage(),
                    ),
                Container(
                  child: _buildComposer(),
                  decoration: const BoxDecoration(
                      color: Colors.white,),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  /// Component for typing text
  Widget _buildComposer() {
    return SafeArea(
      bottom: true,
      top: false,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5),
          child: Row(
            children: <Widget>[
              // Icon(
              //   Icons.add,
              //   color: Color(0xFFA665D1),
              //   size: 27.0,
              // ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black12),
                    // ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(236, 238, 239, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _textController,
                        onChanged: (String txt) {
                          setState(() {
                            _isWriting = txt.isNotEmpty;
                          });
                        },
                        style: const TextStyle(
                            color: Color.fromRGBO(96, 110, 121, 1)),
                        onSubmitted: _submitMsg,
                        decoration: const InputDecoration.collapsed(
                            hintText: "Tulis Pesan..",
                            hintStyle: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 16.0,
                                color: Color.fromRGBO(96, 110, 121, 1))),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  child:IconButton(
                          icon: Icon(
                            Icons.send_outlined,
                            color: Colors.grey.shade600,
                          ),
                          onPressed: _isWriting
                              ? () => _submitMsg(_textController.text)
                              : null,
                        )),
            ],
          ),
          decoration: Theme.of(context).platform != TargetPlatform.iOS
              ? BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.brown)))
              : null),
    );
  }

  @override
  void dispose() {
    for (Msg msg in _messages) {
      msg.animationController!.dispose();
    }
    super.dispose();
  }

  void _submitMsg(String txt) {
    _textController.clear();
    setState(() {
      _isWriting = false;
    });
    Msg msg = Msg(
      txt: txt,
      animationController: AnimationController(
          vsync: this, duration: Duration(milliseconds: 800)),
    );
    setState(() {
      _messages.insert(0, msg);
    });
    msg.animationController!.forward();
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

///
/// Create triangle clipper
///
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

class Msg extends StatelessWidget {
  Msg({this.txt, this.animationController});

  final String? txt;
  final AnimationController? animationController;

  @override
  Widget build(BuildContext ctx) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
          parent: animationController!, curve: Curves.fastOutSlowIn),
      axisAlignment: 0.0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(00.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(1.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0)),
                        color: primaryColor,
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        txt!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

