import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final String subHeading;
  final String cardContent;
  const DataCard(
      {super.key, required this.subHeading, required this.cardContent});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      elevation: 7,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subHeading,
                style: MyTheme.lightTheme(context).textTheme.displayMedium),
            const SizedBox(
              height: 5,
            ),
            Text(
              cardContent,
              style: MyTheme.lightTheme(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
