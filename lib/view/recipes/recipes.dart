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
     print(index);
     setState(() {
       widget.recipes[index].isPlanned = ! widget.recipes[index].isPlanned;
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes recettes', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Mes recettes' , icon:  Icon(Icons.ramen_dining ) ),
          BottomNavigationBarItem(label: 'Meal Planner', icon: Icon(Icons.calendar_month) ),
          BottomNavigationBarItem(label: 'Liste de courses', icon: Icon(Icons.shopping_cart) ),
        ],
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        iconSize: 30,
        currentIndex: 0,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => RecipeCard(recipe: widget.recipes[index], plan: plan, index: index,),
          itemCount: widget.recipes.length,
          // separatorBuilder: (BuildContext context, int index) {  },
      )


    );
  }
}
