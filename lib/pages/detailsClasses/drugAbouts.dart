import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugAbouts extends StatelessWidget {
  final String drugAbouts;
  const DrugAbouts({super.key, required this.drugAbouts});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("About Drug",
                style: MyTheme.lightTheme(context).textTheme.displayMedium),
            const SizedBox(
              height: 5,
            ),
            Text(
              drugAbouts,
              style: MyTheme.lightTheme(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
