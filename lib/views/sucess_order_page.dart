import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/views/home_products.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/views/order_details_page.dart';

class SucessOrderPage extends StatelessWidget {
  const SucessOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/success.png',
                width: 165,
                height: 165,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Your Order has been',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(
              'accepted',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Your items has been placed and is on',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'it\'s way to being processed',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 180),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetailsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: color2,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Track Order'),
              ),
            ),
            SizedBox(height: 15),

            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeProductPage()),
                );
              },
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
