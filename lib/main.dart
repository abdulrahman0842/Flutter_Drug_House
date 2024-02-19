// import 'package:flut_first/pages/home_page.dart';
import 'package:flut_first/pages/ListPage.dart';
import 'package:flut_first/pages/home_page.dart';
import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';
// import 'pages/drug_List_Page.dart';
// import 'pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drug House',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
