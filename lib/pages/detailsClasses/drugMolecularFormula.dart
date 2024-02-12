import 'package:flutter/material.dart';

class DrugMolecularFormula extends StatelessWidget {
  const DrugMolecularFormula({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      color: Colors.brown.shade50,
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Molecular Formula',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            const Text('h2so4', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
