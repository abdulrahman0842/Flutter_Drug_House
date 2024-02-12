import 'package:flutter/material.dart';

var sideEffects = [
  " Headache",
  " dizziness",
  " nausea",
  " vomiting",
  " loss of appetite ",
  " stomach/abdominal pain",
  " gas ",
  " diarrhoea"
];

class DrugEffects extends StatelessWidget {
  const DrugEffects({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Adverse Effects:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text('\u2022 ' + sideEffects[index]);
                  },
                  itemCount: sideEffects.length),
            ),
          ],
        ),
      ),
    );
  }
}
