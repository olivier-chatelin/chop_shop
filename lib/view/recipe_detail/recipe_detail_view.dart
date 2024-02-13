import 'package:chop_shop/design/chop_colors/chop_colors.dart';
import 'package:chop_shop/model/recipe_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/RecipeProvider.dart';
import '../commons/widgets/bottom_navigation.dart';

class RecipeDetail extends StatefulWidget {
  static const routeName = '/recipe_detail';

  final String recipeId;
  const RecipeDetail({super.key, required this.recipeId});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  late bool isEditing;

  @override
  void initState() {
    super.initState();
    isEditing = false;
  }

  void edit () {
    setState(() {
      isEditing = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    final Recipe recipe = Provider.of<RecipeProvider>(context).getRecipeById(widget.recipeId);
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 0),
      body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ChopColors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: ChopColors.borderColor,
                  width: 3

                ),
              ),
              child: Column(
                  children: [
                    Center(
                      child: Text(recipe.name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: ChopColors.selectedColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (!isEditing)
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 10),
                          IconButton(
                            icon: Icon(
                              recipe.isInPlanningBag ? Icons.star :  Icons.star_border,
                              color: ChopColors.selectedColor,
                              size: 40,
                              fill: 1,
                            ),
                            onPressed: () => Provider.of<RecipeProvider>(context, listen: false).plan(recipe),
                          ),
                        ],
                        ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.asset(recipe.image ?? 'assets/images/placeholder.png')
                    )
              ]),
            ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: edit,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
