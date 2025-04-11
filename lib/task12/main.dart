import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styled Container App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styled Container Example'),
        centerTitle: true,
        backgroundColor: Colors.black54,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black87,
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 60, 40, 60),
          decoration: BoxDecoration(
            color: Colors.amber, // Background color
            borderRadius: BorderRadius.circular(16), // Rounded corners
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.3), // Shadow color
                blurRadius: 10, // Blur radius
                offset: Offset(4, 4), // Shadow offset
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}