import 'package:chop_shop/design/chop_colors/chop_colors.dart';
import 'package:chop_shop/view/commons/widgets/chop_badge.dart';
import 'package:chop_shop/model/recipe_model.dart';
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
        child:  SizedBox(
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Ink.image(
                  image:  AssetImage(recipe.image ?? 'assets/images/placeholder.png'),
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/recipe_detail', arguments: recipe);
                    },
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
                            icon: Icon(
                                recipe.isInPlanningBag ? Icons.star :  Icons.star_border,
                                color: ChopColors.white,
                                size: 40,
                                fill: 1,
                            ),
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
