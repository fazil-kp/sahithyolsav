import 'package:flutter/material.dart';
import 'package:sahithyolsav/helper/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      color: Colors.white,
      child: Text("Home", style: TextStyle(color: Colors.black)),
    );
  }
}
