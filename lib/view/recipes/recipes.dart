import 'package:flutter/material.dart';
import '../../model/recipe.model.dart';
import 'widgets/recipe_card.dart';
import '../../data/data.dart' as data;
class Home extends StatefulWidget {
  Home({super.key});
  late List<Recipe> recipes;

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
     // print(widget.recipes[index]);
  }

  void seeDetails (int index) {
    // print('see details for ${widget.recipes[index].name}');
  }

  void addRecipe() {
    // print('add recipe');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes recettes'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Mes recettes' , icon:  Icon(Icons.ramen_dining ) ),
          BottomNavigationBarItem(label: 'Meal Planner', icon: Icon(Icons.calendar_month) ),
          BottomNavigationBarItem(label: 'Liste de courses', icon: Icon(Icons.shopping_cart) ),
        ],
        iconSize: 30,
        currentIndex: 0,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => RecipeCard(recipe: widget.recipes[index], plan: plan, index: index, seeDetails: seeDetails),
          itemCount: widget.recipes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>print('add recipe'),
        child: const Icon(Icons.add),
      ),


    );
  }
}
