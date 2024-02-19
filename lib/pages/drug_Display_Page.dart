import 'package:flut_first/models/drugModel.dart';
import 'package:flut_first/widgets/drug_Data_Card.dart';
import 'package:flut_first/pages/detailsClasses/drugEffects.dart';
import 'package:flut_first/pages/detailsClasses/drugImage.dart';
import 'package:flut_first/pages/detailsClasses/drugTitle.dart';
import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  final Drug drug;

  const Information({super.key, required this.drug});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightTheme(context).canvasColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 223, 232, 243),
                  Color.fromARGB(249, 111, 166, 218),
                ])),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  DrugTitle(drugName: widget.drug.name),
                  const SizedBox(
                    height: 12,
                  ),
                  const DrugImage(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DataCard(
                          subHeading: "Molecular Formula",
                          cardContent: widget.drug.molecularFormula),
                      const SizedBox(
                        height: 12,
                      ),
                      DataCard(
                          subHeading: "IUPAC Name",
                          cardContent: widget.drug.iupacname),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  // About Drug
                  DataCard(
                      subHeading: "About Drug", cardContent: widget.drug.about),
                  const SizedBox(
                    height: 12,
                  ),
                  // Pharmacology / Mechanism of Action(MOA)
                  DataCard(
                      subHeading: "Pharmaclogy / Mechanism of Action",
                      cardContent: widget.drug.mechanism),
                  const SizedBox(
                    height: 12,
                  ),
                  // USES
                  DataCard(subHeading: "Uses", cardContent: widget.drug.uses),
                  const SizedBox(
                    height: 12,
                  ),
                  // Adverse Effects
                  // const DrugEffects(),
                  DataCard(
                    subHeading: "Effects",
                    cardContent: widget.drug.effects,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
