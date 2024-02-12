import 'package:chop_shop/model/recipe_model.dart';
import 'package:flutter/material.dart';

import '../commons/widgets/bottom_navigation.dart';

class RecipeDetail extends StatefulWidget {
  static const routeName = '/recipe_detail';

  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.name),
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 0),
      body: Center(child: Text('recipe_detail')),

    );
  }
}
