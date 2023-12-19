import 'package:flutter/material.dart';
import 'package:revesion_app/LoginPage.dart';
import 'package:revesion_app/Profile.dart';
import 'package:revesion_app/counterapp.dart';
import 'package:revesion_app/global.dart';
import 'package:revesion_app/home.dart';
import 'package:revesion_app/navigatation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: splash());
  }
}

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  NavigatetoHome() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  void initState() {
    NavigatetoHome();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:
          Center(child: CircularProgressIndicator(color: Global.CustomColor())),
    );
  }
}
