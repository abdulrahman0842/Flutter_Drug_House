import 'package:flutter/material.dart';

class DrugAbouts extends StatelessWidget {
  const DrugAbouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("About Drug",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              "Mannitol is a type of sugar alcohol used as a sweetener and medication.It is used as a low calorie sweetener as it is poorly absorbed by the intestine. As a medication, it is used to decrease pressure in the eyes, as in glaucoma, and to lower increases intracranial pressure. Medically, it is given by injection or inhalation. Effects typically begin within 15 minutes and last up to 8 hours.",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
