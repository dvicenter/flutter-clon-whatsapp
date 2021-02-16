import 'package:clon_whatsapp/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final Color primaryColor = Color(0xff075E54);
final Color accentColor = Color(0xff25d366);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      home: HomePage(),
    );
  }
}
