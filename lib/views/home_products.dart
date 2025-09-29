import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:flutter/material.dart';

class HomeProductPage extends StatelessWidget {
  const HomeProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  children: [
                    Image.asset('assets/carrot.png', width: 40, height: 40),
                    SizedBox(width: 40),
                    Icon(Icons.location_on),
                    Text( 
                      'Dhaka, Banassre',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Store',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.search, color: color2),
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
              ),
              SizedBox(height: 30),
              imageSliderHome(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exclusive Offer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('See all', style: TextStyle(color: color2)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: productCard(
                      context,
                      products[0],
                      imagePath: 'assets/home_product1.png',
                      nameProduct: 'Organic Bananas',
                      price: '\$4.99',
                      piceis: '7pcs, Priceg',
                    ),
                  ),
                  Expanded(
                    child: productCard(
                      context,
                      products[1],
                      imagePath: 'assets/home_product2.png',
                      nameProduct: 'Red Apple',
                      price: '\$4.99',
                      piceis: '1kg Priceg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Selling',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 15, color: color2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: productCard(
                      context,
                      products[2],
                      imagePath: 'assets/home_product3.png',
                      nameProduct: 'Bell Pepper Red',
                      price: '\$4.99',
                      piceis: '1kg, Priceg',
                    ),
                  ),
                  Expanded(
                    child: productCard(
                      context,
                      products[3],
                      imagePath: 'assets/home_product4.png',
                      nameProduct: 'Ginger',
                      price: '\$4.99',
                      piceis: '250gm, Priceg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Groceries',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 15, color: color2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: [
                      cardHome(
                        'Pulses',
                        'assets/home_pulses.png',
                        Color.fromRGBO(255, 181, 101, 0.45),
                      ),
                      SizedBox(width: 30),
                      cardHome(
                        'Pulses',
                        'assets/home_rice.png',
                        Color.fromRGBO(83, 177, 117, 0.781),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: productCard(
                      context,
                      products[4],
                      imagePath: 'assets/home_product5.png',
                      nameProduct: 'Beef Bone',
                      price: '\$4.99',
                      piceis: '1kg Priceg',
                    ),
                  ),
                  Expanded(
                    child: productCard(
                      context,
                      products[5],
                      imagePath: 'assets/home_product6.png',
                      nameProduct: 'Chicken Broiler',
                      price: '\$4.99',
                      piceis: '1kg Priceg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
