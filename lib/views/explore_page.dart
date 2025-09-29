import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/views/bevegares_page.dart';
import 'package:e_commerce_app/views/search_page.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0, right: 10.0, left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Find Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 25),
              TextField(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Search Store',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: color2),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  exploreCard(
                    imagePath: 'assets/explore_product1.png',
                    text1: 'Frash Fruit',
                    text2: '& Vegetable',
                    color1: Color.fromRGBO(83, 177, 117, 0.1),
                    color2: Color.fromRGBO(87, 255, 148, 0.098),
                  ),
                  SizedBox(width: 17),
                  exploreCard(
                    imagePath: 'assets/explore_product2.png',
                    text1: 'Cooking Oil',
                    text2: '& Ghee',
                    color1: Color.fromRGBO(248, 164, 76, 0.1),
                    color2: Color.fromRGBO(238, 146, 46, 0.098),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  exploreCard(
                    imagePath: 'assets/explore_product3.png',
                    text1: 'Meat & Fish',
                    text2: '',
                    color1: Color.fromRGBO(247, 165, 147, 0.25),
                    color2: Color.fromRGBO(255, 159, 137, 0.247),
                  ),
                  SizedBox(width: 17),
                  exploreCard(
                    imagePath: 'assets/explore_product4.png',
                    text1: 'Bakery & Snacks',
                    text2: '',
                    color1: Color.fromRGBO(211, 176, 224, 0.25),
                    color2: Color.fromRGBO(232, 170, 255, 0.247),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  exploreCard(
                    imagePath: 'assets/explore_product6.png',
                    text1: 'Dairy & Eggs',
                    text2: '',
                    color1: Color.fromRGBO(83, 177, 117, 0.1),
                    color2: Color.fromRGBO(87, 255, 148, 0.098),
                  ),
                  SizedBox(width: 17),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BevegaresPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 165,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(183, 223, 245, 0.25),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromRGBO(163, 220, 250, 0.247),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/explore_product5.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Beverages',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
