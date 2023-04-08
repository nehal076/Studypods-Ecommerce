import 'package:flutter/material.dart';
import 'package:studypods_ecommerce/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List categories = [
    {"name": "Womens Fashion", "image": 'assets/women.jpeg'},
    {"name": "Mens Fashion", "image": 'assets/men.jpeg'},
    {"name": "Electronic Iteams", "image": 'assets/electronic.jpg'},
    {"name": "sport", "image": 'assets/sports.jpg'},
    {"name": "Gym tools", "image": 'assets/gymtools.jpg'},
    {"name": "Kitchen", "image": 'assets/kitchen.jpg'},
    {"name": "Kids Wear", "image": 'assets/kids.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('MyShop'),
        actions: const [
          Icon((Icons.notifications)),
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: categories.length,
            itemBuilder: (_, index) {
              return Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        categories[index]['name'],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Image.asset(
                        categories[index]['image'],
                        height: 100,
                      )
                    ],
                  ),
                ),
              );
            },
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Catgories'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
        ],
      ),
    );
  }
}
