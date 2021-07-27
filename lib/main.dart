import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart' as yaru;
import 'package:translator_linux/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: yaru.lightTheme,
      darkTheme: yaru.darkTheme,
      title: 'Translator',
      home: HomeScreen(),
    );
  }
}
