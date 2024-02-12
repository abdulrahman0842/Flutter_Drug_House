import 'package:flutter/material.dart';

class DrugImage extends StatelessWidget {
  const DrugImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: Image.network(
          'https://c8.alamy.com/comp/2AAJF1X/structural-formula-of-paracetamol-acetaminophen-2AAJF1X.jpg',
        ),
      ),
    );
  }
}
