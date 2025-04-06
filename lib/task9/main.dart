import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Card App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> items = [
    {
      'image': 'https://images.unsplash.com/photo-1606755962773-0e4f4e0d5c2a?auto=format&fit=crop&w=800&q=80',
      'title': 'Burger',
      'subtitle': 'Juicy and Delicious',
      'description': 'Perfectly grilled burger with fresh toppings.',
    },
    {
      'image': 'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=800&q=80',
      'title': 'Pizza',
      'subtitle': 'Cheesy Perfection',
      'description': 'Oven-baked pizza with mozzarella and veggies.',
    },
    {
      'image': 'https://images.unsplash.com/photo-1594007654729-e5f89c07f6f9?auto=format&fit=crop&w=800&q=80',
      'title': 'Pasta',
      'subtitle': 'Italian Delight',
      'description': 'Creamy Alfredo pasta with herbs and cheese.',
    },
    {
      'image': 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=800&q=80',
      'title': 'Chocolate Cake',
      'subtitle': 'Rich and Moist',
      'description': 'Decadent chocolate cake topped with ganache.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomCard(
            image: items[index]['image']!,
            title: items[index]['title']!,
            subtitle: items[index]['subtitle']!,
            description: items[index]['description']!,
          );
        },
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String description;

  CustomCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          // You can add navigation or interaction here
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 183, 88, 88),
            borderRadius: BorderRadius.circular(8),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ]
                : [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  widget.image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                widget.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                widget.subtitle,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 8),
              Text(
                widget.description,
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
