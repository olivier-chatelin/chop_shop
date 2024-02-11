
import 'package:flutter/material.dart';

import '../../../design/widgets/bottom_navigation.dart';

class Grocery extends StatefulWidget {
  const Grocery({super.key});

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes recettes'),
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 2),
      body: Center(child: Text('Liste de courses')),
    );
  }
}
