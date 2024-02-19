import 'package:flut_first/models/drugModel.dart';
import 'package:flut_first/pages/drug_Display_Page.dart';
import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugCard extends StatelessWidget {
  final Drug drug;
  const DrugCard({super.key, required this.drug});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Information(drug: drug),
            ));
      },
      child: Card(
          color: MyTheme.lightTheme(context).cardColor,
          elevation: 5,
          margin: const EdgeInsets.all(10),
          // shape: StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(4),
                    height: 80,
                    width: 100,
                    child: Card(
                        color: Colors.white,
                        child: Image.asset('assets/images/medi2.jpg'))),
                SizedBox(
                  width: 175,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        drug.name,
                        style: MyTheme.lightTheme(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        drug.molecularFormula,
                        style: MyTheme.lightTheme(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
          )),
    );
  }
}
