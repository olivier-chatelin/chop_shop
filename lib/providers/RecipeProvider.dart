import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../model/recipe_model.dart';
import '../data/data.dart' as data;

class RecipeProvider extends ChangeNotifier {
  final List<Recipe> _recipes = data.recipes;

  UnmodifiableListView<Recipe> get recipes => UnmodifiableListView(_recipes);

  void plan(Recipe recipe) {
    recipe.isInPlanningBag = !recipe.isInPlanningBag;
    notifyListeners();

  }
}