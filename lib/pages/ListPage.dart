import 'package:flut_first/models/drugModel.dart';
import 'package:flut_first/widgets/drug_List_Card.dart';
import 'package:flutter/material.dart';

class DrugList extends StatelessWidget {
  const DrugList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DrugModel.drugs.length,
      itemBuilder: (context, index) {
        final drug = DrugModel.drugs[index];
        return DrugCard(drug: drug);
      },
    );
  }
}
