import 'package:chop_shop/design/themes/main_theme.dart';
import 'package:chop_shop/view/grocery/widgets/grocery.dart';
import 'package:chop_shop/view/planner/widgets/planner.dart';
import 'package:chop_shop/view/recipe_detail/recipe_detail.dart';
import 'package:chop_shop/view/recipes/recipes.dart';
import 'package:flutter/material.dart';

import 'model/recipe_model.dart';

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
      routes: const {},
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case '/recipe_detail':
              return MaterialPageRoute(builder: (context) => RecipeDetail(recipe: settings.arguments as Recipe));
          case '/planner':
            return MaterialPageRoute(builder: (context) => const Planner());
          case '/grocery':
            return MaterialPageRoute(builder: (context) => const Grocery());
          default :
            return MaterialPageRoute(builder: (context) => const Center(child: Text('No page found')));
        }
      },
    );
  }
}


