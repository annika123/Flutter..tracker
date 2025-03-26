import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChangeTextScreen(),
      debugShowCheckedModeBanner: false, 
    );
  }
}

class ChangeTextScreen extends StatefulWidget {
  const ChangeTextScreen({super.key});

  @override
  State<ChangeTextScreen> createState() => _ChangeTextScreenState();
}

class _ChangeTextScreenState extends State<ChangeTextScreen> {
  String displayText = "Click the button below";

  void updateMessage() {
    setState(() {
      displayText = "Button Pressed!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Button Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: updateMessage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              child: const Text("Press Me", style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}    