import 'package:flutter/material.dart';
import 'package:flutter_modul_5_imtixon/pages/fourPage.dart';
import 'package:flutter_modul_5_imtixon/pages/imtihonUi.dart';
import 'package:flutter_modul_5_imtixon/pages/seconUi.dart';
import 'package:flutter_modul_5_imtixon/pages/thirdPage.dart';

void main() {
  runApp(const MyApp());
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//         splash: Column(
//           children: [Image.asset("assets/images/image_1.png")],
//         ),
//         nextScreen: const SplashScreen());
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.path,
      routes: {
        SplashScreen.path: (context) => const SplashScreen(),
        SeconPage.path: (context) => const SeconPage(),
        ThirdPage.path: (context) => const ThirdPage(),
        FourPage.path: (context) => const FourPage()
      },
    );
  }
}
