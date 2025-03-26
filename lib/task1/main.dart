import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 60,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
    );
  }
}
