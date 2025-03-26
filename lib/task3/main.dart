import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  // Generate a list of 100 items with unique numbers
  final List<int> items = List<int>.generate(100, (index) => index + 1);

  ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${items[index]}'),
          );
        },
      ),
    );
  }
}   