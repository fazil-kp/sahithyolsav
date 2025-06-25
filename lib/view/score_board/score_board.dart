import 'package:flutter/material.dart';
import 'package:sahithyolsav/helper/extensions.dart';
import 'package:sahithyolsav/view/home/home_screen.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: context.width,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  // Asse
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
