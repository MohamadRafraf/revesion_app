import 'package:flutter/material.dart';
import 'package:revesion_app/global.dart';
import 'package:revesion_app/models/user.dart';

class Profile extends StatelessWidget {
  User user;
  Profile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      fontSize: 16,
                      color: Global.CustomColor(),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 40),
              Text(
                "Profile",
                style: TextStyle(fontSize: 25, color: Global.CustomColor()),
              ),
              SizedBox(width: 40),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 16,
                        color: Global.CustomColor(),
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(height: 40),
          Image.network("https://i.pravatar.cc/200"),
          SizedBox(height: 60),
          Global.CustomContainer(user.username),
          SizedBox(height: 25),
          Global.CustomContainer(user.phonemobile),
          SizedBox(height: 25),
          Global.CustomContainer(user.hobbies),
        ]),
      ),
    );
  }
}
