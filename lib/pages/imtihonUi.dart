import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:async';

import 'package:flutter_modul_5_imtixon/pages/seconUi.dart';

class SplashScreen extends StatefulWidget {
  static const path = 'firts';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Size? _size;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;

    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, SeconPage.path, (route) => false);
    });
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/image_1.png')),
    );
  }
}
