import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugMolecularFormula extends StatelessWidget {
  final String drugMolecularFormula;
  const DrugMolecularFormula({super.key, required this.drugMolecularFormula});

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      color: Colors.blueGrey.shade50,
      elevation: 7,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('Molecular Formula',
                style: MyTheme.lightTheme(context).textTheme.displayMedium),
            const SizedBox(
              height: 5,
            ),
            Text(drugMolecularFormula, style: MyTheme.lightTheme(context).textTheme.displaySmall),
          ],
        ),
      ),
    );
  }
}
