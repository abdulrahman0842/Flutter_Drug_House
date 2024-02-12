import 'package:flut_first/pages/detailsClasses/drugAbouts.dart';
import 'package:flut_first/pages/detailsClasses/drugEffects.dart';
import 'package:flut_first/pages/detailsClasses/drugIUPACName.dart';
import 'package:flut_first/pages/detailsClasses/drugImage.dart';
import 'package:flut_first/pages/detailsClasses/drugMOA.dart';
import 'package:flut_first/pages/detailsClasses/drugMolecularFormula.dart';
import 'package:flut_first/pages/detailsClasses/drugUses.dart';
import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  var drugname;
  Information({required drugname}) {
    drugname = this.drugname;
  }

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightTheme(context).canvasColor,
      appBar: AppBar(
        title: const Text(
          'Details',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // gradient: (colors:Color(0xff5040), Color(0xff0000)),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Text(
                    'DrugName Here...',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const DrugImage(),
              const SizedBox(
                height: 12,
              ),
              const DrugMolecularFormula(),
              const SizedBox(
                height: 12,
              ),
              const DrugIUPACName(),
              const SizedBox(
                height: 12,
              ),
              // About Drug
              const DrugAbouts(),
              const SizedBox(
                height: 12,
              ),
              // Pharmacology / Mechanism of Action(MOA)
              const DrugMechanism(),
              const SizedBox(
                height: 12,
              ),
              // USES
              const DrugUses(),
              const SizedBox(
                height: 12,
              ),
              // Adverse Effects
              const DrugEffects(),
            ],
          ),
        ),
      ),
    );
  }
}
