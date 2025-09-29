import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:flutter/material.dart';

class BevegaresPage extends StatelessWidget {
  const BevegaresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_sharp),
                  ),
                  Text(
                    'Beverages',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: productCard(
                      context,
                      products[6],
                      nameProduct: 'Diet Coke',
                      piceis: '35ml, Price',
                      imagePath: 'assets/bevegares_product1.png',
                      price: '\$1.99',
                    ),
                  ),
                  Expanded(
                    child: productCard(
                      context,
                      products[7],
                      nameProduct: 'Sprite Can',
                      piceis: '325ml, Price',
                      imagePath: 'assets/bevegares_product2.png',
                      price: '\$1.50',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: productCard(
                      context,
                      products[8],
                      nameProduct: 'Apple & Grape Juice',
                      piceis: '2L, Price',
                      imagePath: 'assets/bevegares_product3.png',
                      price: '\$15.99',
                    ),
                  ),
                  Expanded(
                    child: productCard(
                      context,
                      products[9],
                      nameProduct: 'Orenge Juice',
                      piceis: '2L, Price',
                      imagePath: 'assets/bevegares_product4.png',
                      price: '\$15.99',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: productCard(
                      context,
                      products[10],
                      nameProduct: 'Coca Cala Can',
                      piceis: '325ml, Price',
                      imagePath: 'assets/bevegares_product5.png',
                      price: '\$4.99',
                    ),
                  ),
                  Expanded(
                    child: productCard(
                      context,
                      products[11],
                      nameProduct: 'Orenge Juice',
                      piceis: '330ml, Price',
                      imagePath: 'assets/bevegares_product6.png',
                      price: '\$4.99',
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
