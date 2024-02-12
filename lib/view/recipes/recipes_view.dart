import 'dart:collection';

import 'package:chop_shop/providers/RecipeProvider.dart';
import 'package:chop_shop/view/commons/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/recipe_model.dart';
import 'widgets/recipe_card.dart';
import '../../data/data.dart' as data;
class Home extends StatefulWidget {
  Home({super.key});
  static const routeName = '/';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

  }
  void plan (int index) {
     // setState(() {
     //   widget.recipes[index].isInPlanningBag = ! widget.recipes[index].isInPlanningBag;
     // });
     // print(widget.recipes[index]);
  }


  void addRecipe() {
    print('add recipe');
  }

  @override
  Widget build(BuildContext context) {
    List<Recipe> recipes = Provider.of<RecipeProvider>(context).recipes;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes recettes'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 0),
      body: ListView.builder(
          itemBuilder: (context, index) => RecipeCard(recipe: recipes[index], index: index),
          itemCount: recipes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addRecipe,
        child: const Icon(Icons.add),
      ),


    );
  }
}
