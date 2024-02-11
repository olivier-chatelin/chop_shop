import 'package:flutter/material.dart';

import '../../../design/widgets/bottom_navigation.dart';

class Planner extends StatefulWidget {
  const Planner({super.key});

  @override
  State<Planner> createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes recettes'),
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 1),
      body: Center(child: Text('Meal Planner')),

    );
  }
}
