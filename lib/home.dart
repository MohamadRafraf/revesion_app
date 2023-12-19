import 'package:flutter/material.dart';
import 'package:revesion_app/global.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Revision")),
        ),
        body: Column(
          children: [
            Text(
              "You Are Log In Here",
              style: TextStyle(fontSize: 25, color: Global.CustomColor()),
            ),
            ElevatedButton(
                onPressed: () async {
                  var y = await testAsync();
                  print(y);
                },
                child: Text("test"))
          ],
        ));
  }
}

Future<int> testAsync() async {
  int i = 0;
  print("before delay");
  await Future.delayed(Duration(seconds: 3), () {
    print("from delay");
  });
  print("after delay");
  return i;
}
