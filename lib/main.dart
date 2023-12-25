import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(''),
            ),
            Text('Ogundipe Emmanuel Oluwamurewa'),
            Text('Flutter Developer'),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
