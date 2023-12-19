import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:revesion_app/counterapp.dart';
import 'package:revesion_app/global.dart';
import 'package:revesion_app/models/user.dart';
import 'package:revesion_app/navigatation_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user1 = User(
        username: "Jana",
        password: "123456",
        phonemobile: "+96179553322",
        hobbies: "Reading");
    final user2 = User(
        username: "muradi",
        password: "654321",
        phonemobile: "+96181996633",
        hobbies: "Movie");
    final user3 = User(
        username: "ali",
        password: "123654",
        phonemobile: "+96170556325",
        hobbies: "Swimming");
    final user4 = User(
        username: "mhamad",
        password: "75623",
        phonemobile: "+961999999",
        hobbies: "gaming");
    List<User> Users = [user1, user2, user3, user4];
    final TextEditingController username = TextEditingController();
    final TextEditingController password = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              'assets/images/welcome.jpeg', // Replace with your image asset path
            ),
          ),
          SizedBox(height: 60),
          Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Email or Username",
                    style: TextStyle(fontSize: 15.0),
                  ))),
          SizedBox(
            height: 5,
          ),
          Global.customTextField(username, "Type Your Username", "Username",
              false, Icon(Icons.person)),
          SizedBox(height: 10),
          Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15.0),
                  ))),
          SizedBox(
            height: 5,
          ),
          Global.customTextField(password, "Type your password", "password",
              true, Icon(Icons.visibility_off)),
          SizedBox(height: 20),
          Global.button(() {
            for (User useroflist in Users) {
              if (username.text == useroflist.username &&
                  password.text == useroflist.password) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Navigation_bar(
                              u: useroflist,
                            )));
              }
              // else {
              //           if (u == Users.length)
              //             showinDialog("Warnings",
              //                 "username or password is incorrect", context);
              //         }
            }
          }, "Log In"),
          SizedBox(height: 60),
          Text(
            "Log in with",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Set the background color
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.twitter),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.facebook),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red, // Set the background color
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.googlePlus),
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
