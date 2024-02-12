import 'package:chop_shop/design/chop_colors/chop_colors.dart';
import 'package:flutter/material.dart';

class ChopBadge extends StatelessWidget {
  final String text;
  const ChopBadge({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ChopColors.white,
          border: Border.all(
            width: 3,
            color: ChopColors.borderColor
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              text,
              style: const TextStyle(
                  fontSize: 15,
              ),
            ),
          ]
      ),
    );
  }
}
