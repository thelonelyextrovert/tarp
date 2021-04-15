import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF0A0D22),
  ));
  runApp(SnakesSpider());
}

class SnakesSpider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF090C20),
        //textTheme: TextTheme(
        // bodyText2: TextStyle(color: Colors.white)
      ),
      home: InputPage(),
    );
  }
}
