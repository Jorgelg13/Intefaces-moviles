import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:interfaces/src/pages/basico.dart';
import 'package:interfaces/src/pages/demoPage.dart';
import 'package:interfaces/src/pages/scroll.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
      
    ));*/

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interfaces Graficas',
      initialRoute: 'home',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'home': (BuildContext context) => DemoPage(),
      },
    );
  }

}