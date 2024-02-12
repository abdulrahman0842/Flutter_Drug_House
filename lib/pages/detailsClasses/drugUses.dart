import 'package:flutter/material.dart';

class DrugUses extends StatelessWidget {
  const DrugUses({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Uses:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              "Amiloride is used with other \"water pills\"/diuretics (such as furosemide, thiazide diuretics like hydrochlorothiazide) to treat high blood pressure (hypertension), heart failure, or extra fluid in the body (edema). Amiloride also helps to treat or prevent low blood potassium levels caused by the other diuretics. ",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
