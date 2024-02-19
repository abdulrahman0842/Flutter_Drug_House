import 'package:flut_first/widgets/myTheme.dart';
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
      color: Colors.blueGrey.shade50,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 223, 232, 243),
                  Color.fromARGB(249, 111, 166, 218),
                ])),
        child: Column(
          children: [
            Text("Adverse Effects:",
                style: MyTheme.lightTheme(context).textTheme.displaySmall),
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
