import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  const BottomNavigation({super.key, required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    const indexCorrespondences = [
      '/',
      '/planner',
      '/grocery',
    ];

    return  BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(label: 'Mes recettes' , icon:  Icon(Icons.ramen_dining )),
        BottomNavigationBarItem(label: 'Meal Planner', icon: Icon(Icons.calendar_month) ),
        BottomNavigationBarItem(label: 'Liste de courses', icon: Icon(Icons.shopping_cart) ),
      ],
      iconSize: 30,
      onTap: (index) => Navigator.pushNamed(context, indexCorrespondences[index]),
      currentIndex: currentIndex,

    );
  }
}
