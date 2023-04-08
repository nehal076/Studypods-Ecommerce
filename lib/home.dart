import 'package:flutter/material.dart';
import 'package:studypods_ecommerce/main.dart';

void main(){
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

class _MyHomePageState extends State<MyHomePage>{
  var currentIndex = 0;
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text('MyShop'),
          actions: const[
            Icon((Icons.notifications))
          ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25,25,25,0),
              child: Row(
                children: [
                  Expanded(child: Container(),),
                  SizedBox(width: 25,),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(25,0,0,0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.8), 
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
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
                          Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Text(price[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                        ],
                      );
                    }
                    ),
              ),
              )
          ],
        ),
      ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .128,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color: index == currentIndex
                      ? Colors.purpleAccent
                      : Colors.black38,
                ),
                
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.list,
    Icons.favorite_rounded,
    Icons.person_rounded,
  ];

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
