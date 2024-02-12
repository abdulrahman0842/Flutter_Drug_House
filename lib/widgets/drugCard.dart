import 'package:flut_first/pages/information.dart';
import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class DrugCard extends StatelessWidget {
  const DrugCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyTheme.lightTheme(context).cardColor,
      elevation: 5,
      margin: EdgeInsets.all(10),
      // shape: StadiumBorder(),
      child: ListTile(
        title: Text('Hello'),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Information(drugname: "Paracetamol"),
              ));
        },
      ),
    );
  }
}
