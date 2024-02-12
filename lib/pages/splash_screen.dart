import 'dart:async';
import 'package:flutter/material.dart';
import 'ListPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ListPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
            child: Text("Drug house",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                    color: Colors.white))));
  }
}


// This Class is not in Use 
// This is for fancy text on splash screen
// class SplashScreenFancy extends StatefulWidget {
//   @override
//   State<SplashScreenFancy> createState() => _SplashScreenFancyState();
// }

// class _SplashScreenFancyState extends State<SplashScreenFancy> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ListPage(),
//           ));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           color: Colors.blue[800],
//           child: Center(
//               child: Text(
//             'Drug House!!!',
//             style: TextStyle(
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//                 foreground: Paint()
//                   ..shader = ui.Gradient.linear(
//                     const Offset(0, 20),
//                     const Offset(150, 20),
//                     <Color>[
//                       Colors.white,
//                       Colors.blueGrey,
//                     ],
//                   )),
//           ))),
//     );
//   }
// }


// Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Image.asset('assets/images/logo.png', fit: BoxFit.cover),
//                 Text("Drug house",
//                     style: TextStyle(
//                         fontSize: 34,
//                         fontWeight: FontWeight.w800,
//                         fontStyle: FontStyle.italic,
//                         color: Colors.white))
//               ],
//             )