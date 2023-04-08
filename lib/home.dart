import 'package:flutter/material.dart';
import 'package:studypods_ecommerce/catalogue.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.8),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.white,
                                  ),
                                  Image.asset(image[index])
                                ],
                              ),
                            ),
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            price[index],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }


  List image = [
    "assets/hoodie.jpg",
    "assets/mobile.jpg",
    "assets/laptop.jpg",
    "assets/shoes.jpg",
    "assets/bag.jpg",
    "assets/headphone.jpg",
  ];

  List name = [
    "Men's Hoodie",
    "iPhone 13 Pro Max, Red",
    "hp Pavilion Laptop(16 GB RAM, 512 GB SSD)",
    "Campus Running shoes for men",
    "Baggit handbag",
    "Boat Rockerz headphone"
  ];

  List price = [
    "Rs. 1,399",
    "Rs. 1,49,999",
    "Rs. 79,999",
    "Rs. 1,899",
    "Rs. 4,999",
    "Rs. 2,599",
  ];
}
