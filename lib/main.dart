import 'package:flut_first/pages/information.dart';
import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';
import 'pages/ListPage.dart';
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
      home: Information(drugname: "Paracetamol"),
    );
  }
}

// This class is not in use
// It is a category page
var category = ['Acidity', 'Diabetic', 'BloodPressure', 'Neuro', 'Ortho'];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Drug House',
            style: TextStyle(fontSize: 28),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
          itemBuilder: (context, index) {
            return InkWell(
                child: Container(
                  color: Colors.white12,
                  child: Text(category[index]),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListPage(),
                      ));
                });
          },
          itemCount: category.length,
        ));
  }
}
