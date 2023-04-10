import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  List categories = [
    {"name": "Womens Fashion", "image": 'assets/categories/2_womens.png'},
    {"name": "Mens Fashion", "image": 'assets/categories/1_mens.png'},
    {"name": "Phone", "image": 'assets/categories/3_phone.png'},
    {"name": "Computers", "image": 'assets/categories/4_computers.png'},
    {"name": "Smart Home", "image": 'assets/categories/5_smart_home.png'},
    {"name": "Art Craft", "image": 'assets/categories/6_art_carft.png'},
    {"name": "Sport", "image": 'assets/categories/8_sport.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categories.length,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
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
                    height: 120,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
