
import 'package:flutter/material.dart';

import '../../commons/widgets/bottom_navigation.dart';

class Grocery extends StatefulWidget {
  static const routeName = '/grocery';

  const Grocery({super.key});

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma liste de courses'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 2),
      body: Center(child: Text('Liste de courses')),
    );
  }
}
