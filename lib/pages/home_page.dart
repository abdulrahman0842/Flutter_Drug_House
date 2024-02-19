import 'dart:convert';

import 'package:flut_first/models/drugModel.dart';
import 'package:flut_first/pages/ListPage.dart';
import 'package:flut_first/pages/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadJson();
  }

  loadJson() async {
    await Future.delayed(const Duration(seconds: 4));
    final jsonData = await rootBundle.loadString('assets/data/chemicals.json');
    final decodedJson = jsonDecode(jsonData);
    var productData = decodedJson["chemicals"];
    DrugModel.drugs =
        List.from(productData).map<Drug>((item) => Drug.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 223, 232, 243),
              Color.fromARGB(249, 111, 166, 218),
            ])),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            DrugModel.drugs.isNotEmpty
                ? const Expanded(child: DrugList())
                : const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
          ],
        ),
      )),
    );
  }
}
