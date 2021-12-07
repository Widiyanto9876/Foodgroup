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
        primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.white, //change your color here
            ),
          ),
          textTheme:
          Theme.of(context).textTheme.apply(fontFamily: "Poppins"),
          fontFamily: "Poppins"),
      home: const SplashScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldkey =  GlobalKey<ScaffoldState>();
//   final List<String> _names = [
//     'Liam', 'Noah', 'Oliver', 'William', 'Elijah',
//     'James', 'Benjamin', 'Lucas', 'Mason', 'Ethan', 'Alexander'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldkey,
//       appBar: AppBar(
//         title: Text('Pop Menu with List'),
//       ),
//       body: ListView.builder(
//         itemBuilder: (_, i) {
//           String name = _names[i];
//           return ListTile(
//             title: Text('$name'),
//             trailing: PopupMenuButton(
//               icon: Icon(Icons.more_vert),
//               itemBuilder: (context) {
//                 return [
//                   PopupMenuItem(
//                     value: 'edit',
//                     child: Text('Edit'),
//                   ),
//                   PopupMenuItem(
//                     value: 'delete',
//                     child: Text('Delete'),
//                   )
//                 ];
//               },
//               onSelected: (String value) => actionPopUpItemSelected(value, name),
//             ),
//           );
//         },
//         itemCount: _names.length,
//       ),
//     );
//   }
//
//   void actionPopUpItemSelected(String value, String name) {
//     _scaffoldkey.currentState!.hideCurrentSnackBar();
//     String message;
//     if (value == 'edit') {
//       message = 'You selected edit for $name';
//     } else if (value == 'delete') {
//       message = 'You selected delete for $name';
//     } else {
//       message = 'Not implemented';
//     }
//     final snackBar = SnackBar(content: Text(message));
//     _scaffoldkey.currentState!.showSnackBar(snackBar);
//   }
// }