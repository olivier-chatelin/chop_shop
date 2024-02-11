import 'package:chop_shop/model/recipe.model.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final Function plan;
  final int index;
  const RecipeCard({super.key, required this.recipe, required this.plan, required this.index});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        child:  SizedBox(
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Ink.image(
                  image:  AssetImage(recipe.image ?? 'assets/images/placeholder.png'),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () => print('tap'),
                  ),
                ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child:  IconButton(
                            // icon: recipe.isPlanned ? Icons.event_busy :  Icons.edit_calendar,
                            icon: Icon(recipe.isPlanned ? Icons.event_busy :  Icons.edit_calendar, color: Colors.white, size: 40),
                            onPressed: () => plan(index),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                          child: Text(
                            recipe.name,
                            style: const TextStyle(
                                fontSize: 15
                            ),
                          ),
                        ),
                      ]
                    ),

                  ],
                ),
              )
            ],
          ),
        )
        ),
      );
  }
}
