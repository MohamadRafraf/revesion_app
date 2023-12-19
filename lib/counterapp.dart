import 'package:flutter/material.dart';
import 'package:revesion_app/LoginPage.dart';
import 'package:revesion_app/home.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _counterAppState();
}

class _counterAppState extends State<CounterApp> {
  @override
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter:",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              i.toString(),
              style: TextStyle(fontSize: 25),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  i++;
                });
              },
              icon: Icon(Icons.add),
              iconSize: 20,
            ),
            SizedBox(
              height: 30,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  if (i > 0) {
                    i--;
                  } else {
                    i = 0;
                  }
                });
              },
              icon: Icon(Icons.remove),
              iconSize: 20,
            ),
            SizedBox(
              height: 30,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  i = 0;
                });
              },
              icon: Icon(Icons.delete),
              iconSize: 20,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                icon: Icon(Icons.navigate_next))
          ],
        ),
      ),
    );
  }
}
