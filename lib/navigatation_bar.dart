import 'package:flutter/material.dart';
import 'package:revesion_app/Profile.dart';
import 'package:revesion_app/global.dart';
import 'package:revesion_app/home.dart';
import 'package:revesion_app/models/user.dart';

class Navigation_bar extends StatefulWidget {
  User u;
   Navigation_bar({super.key,required this.u});

  @override
  State<Navigation_bar> createState() => _Navigation_barState();
}

class _Navigation_barState extends State<Navigation_bar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> Screens = [
      HomePage(),
      Profile( user: widget.u)
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("watad"),
        backgroundColor: Global.CustomColor(),
      ),
      body: Screens[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
        ],
        currentIndex: index,
        selectedItemColor: Global.CustomColor(),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
