import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugIUPACName extends StatelessWidget {
  final String drugIUPACName;
  const DrugIUPACName({super.key, required this.drugIUPACName});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('IUPAC Name',
                style: MyTheme.lightTheme(context).textTheme.displayMedium),
            const SizedBox(
              height: 5,
            ),
            Text(
              drugIUPACName,
              style: MyTheme.lightTheme(context).textTheme.displaySmall,
            )
          ],
        ),
      ),
    );
  }
}
