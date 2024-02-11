import 'package:chop_shop/desing/widgets/chop_badge.dart';
import 'package:chop_shop/model/recipe.model.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final Function plan;
  final int index;
  final Function seeDetails;
  const RecipeCard({super.key, required this.recipe, required this.plan, required this.index, required this.seeDetails});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child:  SizedBox(
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Ink.image(
                  image:  AssetImage(recipe.image ?? 'assets/images/placeholder.png'),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () => seeDetails(index),
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
                            icon: Icon(recipe.isInPlanningBag ? Icons.event_busy :  Icons.edit_calendar, color: Colors.white, size: 40),
                            onPressed: () => plan(index),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: ChopBadge(text: recipe.name)

                        )
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
