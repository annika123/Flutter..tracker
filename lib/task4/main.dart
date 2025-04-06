import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Style Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextStyleDemo(),
    );
  }
}

class TextStyleDemo extends StatelessWidget {
  const TextStyleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Style Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bold Text",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "Italic Text",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            Text(
              "Colored Text",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
            Text(
              "Underlined Text",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20,
              ),
            ),
            Text(
              "Large Text with Custom Font",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
