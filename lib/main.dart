import 'package:chop_shop/design/themes/main_theme.dart';
import 'package:chop_shop/providers/RecipeProvider.dart';
import 'package:chop_shop/view/grocery/widgets/grocery_view.dart';
import 'package:chop_shop/view/planner/widgets/planner_view.dart';
import 'package:chop_shop/view/recipe_detail/recipe_detail_view.dart';
import 'package:chop_shop/view/recipes/recipes_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/recipe_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RecipeProvider())
      ],
      child: MaterialApp(
        title: 'Chop shop',
        debugShowCheckedModeBanner: false,
        theme: mainTheme,
        home: Home(),
        routes: const {},
        onGenerateRoute: (settings) {
          switch(settings.name) {
            case '/recipe_detail':
                return MaterialPageRoute(builder: (context) => RecipeDetail(recipeId: settings.arguments as String));
            case '/planner':
              return MaterialPageRoute(builder: (context) => const Planner());
            case '/grocery':
              return MaterialPageRoute(builder: (context) => const Grocery());
            default :
              return MaterialPageRoute(builder: (context) => const Center(child: Text('No page found')));
          }
        },
      ),
    );
  }
}


