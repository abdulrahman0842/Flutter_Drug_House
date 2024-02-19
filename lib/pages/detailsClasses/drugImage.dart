import 'package:flutter/material.dart';

class DrugImage extends StatelessWidget {
  const DrugImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/medi2.jpg'))),
    );
  }
}
