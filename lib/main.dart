import 'package:chop_shop/desing/themes/main_theme.dart';
import 'package:chop_shop/view/recipes/recipes.dart';
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
      title: 'Chop shop',
      debugShowCheckedModeBanner: false,
      theme: mainTheme,
      home: Home(),
    );
  }
}


