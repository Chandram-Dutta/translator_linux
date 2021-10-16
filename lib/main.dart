import 'package:flutter/material.dart';
import 'package:translator_linux/languagesList.dart';
import 'package:translator_linux/screens/home_screen.dart';
import 'package:yaru/yaru.dart' as yaru;

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
