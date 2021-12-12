import 'package:flutter/material.dart';
import 'package:foodgroup/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        //   appBarTheme: const AppBarTheme(
        //     iconTheme: IconThemeData(
        //       color: Colors.white, //change your color here
        //     ),
        //   ),
          textTheme:
          Theme.of(context).textTheme.apply(fontFamily: "Poppins"),
          fontFamily: "Poppins"),
      home: const SplashScreen(),
    );
  }
}
