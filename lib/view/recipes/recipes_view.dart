import 'dart:collection';

import 'package:chop_shop/design/chop_colors/chop_colors.dart';
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
  late bool isSearching;
  late String searchValue;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    isSearching = false;
    searchValue = '';
    _focusNode.unfocus();
  }

  void addRecipe() {
    print('add recipe');
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }
  
  void changeSearchValue (String value) {
    setState(() {
      searchValue = value;
      isSearching = value.isNotEmpty;
    });
  }

  void removeQuery () {
    setState(() {
      _searchController.clear();
      searchValue = '';
      isSearching = false;
      _focusNode.unfocus();

    });
  }

  @override
  Widget build(BuildContext context) {
    List<Recipe> recipes = Provider.of<RecipeProvider>(context).getFilteredRecipes(searchValue);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes recettes'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 0),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
             Row(
              children: [
                 Expanded(
                  child:  TextField(
                    focusNode: _focusNode,
                    onChanged: (value) => changeSearchValue(value),
                    controller: _searchController,
                    decoration:  const InputDecoration(

                      hintText: 'Rechercher une recette',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                if(isSearching)
                IconButton(
                    onPressed: removeQuery,
                    icon: const Icon(Icons.cancel, color: ChopColors.cta,)
                )
              ],
            ),
            Expanded(
              child: GridView(
              scrollDirection: Axis.vertical,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: recipes.map((recipe) => RecipeCard(recipe: recipe)).toList() ,
              ),
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addRecipe,
        child: const Icon(Icons.add),
      ),


    );
  }
}
