import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container UI'),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: FlutterLogo(),
          ),
          Center(
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ),
                ),
              ),
            ),
          )
        ],
      )

    );
  }
}

//Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             gradient: LinearGradient(
//               stops: [0.2, 1],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 /*Colors.purple,
//                 Colors.indigo,
//                 Colors.blue,*/
//                 Colors.green,
//                 Colors.yellow,
//                 /*Colors.orange,
//                 Colors.red,*/
//               ]
//             )
//           ),
//           /*child: Container(
//             margin: EdgeInsets.all(11),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//             ),
//           ),*/
//         ),
//       )

//Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//               color: Colors.green,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 blurRadius: 11,
//                 spreadRadius: 1,
//                 offset: Offset(-11,-11)
//               ),
//               BoxShadow(
//                   color: Colors.green,
//                   blurRadius: 50,
//                   spreadRadius: 5,
//                   offset: Offset(11,11)
//               ),
//             ]
//           ),
//         ),
//       )


