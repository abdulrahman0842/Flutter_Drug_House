import 'package:flutter/material.dart';

class DrugMechanism extends StatelessWidget {
  const DrugMechanism({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Pharmacology / Mechanism of Action(MOA)",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              "Amiloride works by inhibiting sodium reabsorption in the distal convoluted tubules and collecting ducts in the kidneys by binding to the amiloride-sensitive sodium channels. This promotes the loss of sodium and water from the body, but without depleting potassium.",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
