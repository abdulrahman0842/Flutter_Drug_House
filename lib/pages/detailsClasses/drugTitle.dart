import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugTitle extends StatelessWidget {
  final String drugName;
  const DrugTitle({super.key, required this.drugName});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      elevation: 7,
      child: Container(
        height: 75,
        width: 200,
        alignment: Alignment.center,
        // padding: const EdgeInsets.all(18),

        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 223, 232, 243),
                  Color.fromARGB(249, 111, 166, 218),
                ])),
        child: Text(
          drugName,
          style: MyTheme.lightTheme(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
