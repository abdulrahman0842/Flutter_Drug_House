import 'package:flutter/material.dart';

class DrugIUPACName extends StatelessWidget {
  const DrugIUPACName({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown.shade50,
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('IUPAC Name',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            Text(
                '2.5 diamiino-6-chloro-  n(diaminomeethylene)pyrazine 2 carboxamide')
          ],
        ),
      ),
    );
  }
}
