import 'package:chop_shop/view/commons/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import '../../model/recipe_model.dart';
import 'widgets/recipe_card.dart';
import '../../data/data.dart' as data;
class Home extends StatefulWidget {
  Home({super.key});
  late List<Recipe> recipes;
  static const routeName = '/';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    widget.recipes = data.recipes;
    super.initState();

  }
  void plan (int index) {
     setState(() {
       widget.recipes[index].isInPlanningBag = ! widget.recipes[index].isInPlanningBag;
     });
     print(widget.recipes[index]);
  }


  void addRecipe() {
    print('add recipe');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes recettes'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 0),
      body: ListView.builder(
          itemBuilder: (context, index) => RecipeCard(recipe: widget.recipes[index], plan: plan, index: index),
          itemCount: widget.recipes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>print('add recipe'),
        child: const Icon(Icons.add),
      ),


    );
  }
}
