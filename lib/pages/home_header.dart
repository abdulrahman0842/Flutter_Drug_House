import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Drug House",
      style: MyTheme.lightTheme(context).textTheme.headlineLarge,
    );
  }
}
