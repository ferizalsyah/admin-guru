import 'package:flutter/material.dart';
import 'package:flutter_ui/Screens/Welcome/payment.dart';
import 'package:flutter_ui/constanta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      // memanggil halaman welcome screen di lib
      home: Payment(),
    );
  }
}
