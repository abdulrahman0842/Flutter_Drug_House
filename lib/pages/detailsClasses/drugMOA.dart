import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugMechanism extends StatelessWidget {
  final String drugMechanism;
  const DrugMechanism({super.key, required this.drugMechanism});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("Pharmacology / Mechanism of Action(MOA)",
                style: MyTheme.lightTheme(context).textTheme.displayMedium),
            const SizedBox(
              height: 5,
            ),
            Text(
              drugMechanism,
              style: MyTheme.lightTheme(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
