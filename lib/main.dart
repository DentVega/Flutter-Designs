import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/src/pages/basico_page.dart';
import 'package:flutter_designs/src/pages/botones_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';
import 'package:flutter_designs/src/pages/tangible_Bank_home_page.dart';
import 'package:flutter_designs/src/pages/tangible_bank_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'tangiblebank',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
        'tangiblebank': (BuildContext context) => TangibleBank(),
        'tangibleBankHome': (BuildContext context) => TangibleBankHome()
      },
    );
  }
}
