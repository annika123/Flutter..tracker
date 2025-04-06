import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Image Grid App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  ImageGridScreen({super.key});

  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1612503480857-22f6162a1a39?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MTF8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1555685811-c615251ca13e?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MjB8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1598960372195-122365c5178c?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MTN8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1600302713491-3f531441a91f?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MTR8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1627656808505-50163f1269b7?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MTl8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1579619405262-0dce35f44f56?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MTl8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1575414348-e1b360517053?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MjZ8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1625810147465-b2e9de5c0f9e?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8MTh8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
    'https://images.unsplash.com/photo-1612184493242-e9f535ebcf4e?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjUyOXwwfDF8c2VhY2h8Mjl8fGZvb2R8ZW58MHx8fHwxNjkwNjczNzI2&ixlib=rb-1.2.1&q=80&w=400',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Image Grid Layout'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid
            crossAxisSpacing: 6.0, // Horizontal spacing between items
            mainAxisSpacing: 6.0, // Vertical spacing between items
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(imageUrls[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}
