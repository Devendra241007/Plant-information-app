import 'dart:async';

import 'package:dev_03/colors.dart';
import 'package:dev_03/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => wrapper()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Lottie.asset('assets/animation/animation-2.json',height: 270),
      ),
    );
  }
}
