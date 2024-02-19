import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugUses extends StatelessWidget {
  final String drugUse;
  const DrugUses({super.key, required this.drugUse});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("Uses:",
                style: MyTheme.lightTheme(context).textTheme.displayMedium),
            const SizedBox(
              height: 5,
            ),
            Text(
              drugUse,
              style: MyTheme.lightTheme(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
