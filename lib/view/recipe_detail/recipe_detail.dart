import 'package:flutter/material.dart';
import '../../data/data.dart' as data;
import '../../model/recipe_model.dart';


class RecipeDetail extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(recipe.name));
  }
}
