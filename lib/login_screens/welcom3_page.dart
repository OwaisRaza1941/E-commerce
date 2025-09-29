import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/login_screens/signin_page.dart';
import 'package:flutter/material.dart';

class Welcom3Page extends StatelessWidget {
  const Welcom3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 105),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Image.asset(
                  'assets/welcome_page.png',
                  width: 70,
                  height: 70,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      'DESHI',
                      style: TextStyle(
                        fontSize: 20,
                        color: color1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'MART',
                      style: TextStyle(
                        fontSize: 20,
                        color: color4,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Desh ka market',
                  style: TextStyle(color: color3, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    welcomePageIcon(),
                    SizedBox(width: 30),
                    Text('Organic Groceries', style: TextStyle(color: color3)),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Divider(thickness: 1, color: color3, indent: 10, endIndent: 10),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: welcomePageIcons(
                  'Whole foods and vegitable',
                  Icons.restaurant,
                  color4,
                ),
              ),
              SizedBox(height: 8),
              Divider(thickness: 1, color: color3, indent: 10, endIndent: 10),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: welcomePageIcons(
                  'Fast Delivery',
                  Icons.delivery_dining_rounded,
                  Colors.blue,
                ),
              ),
              SizedBox(height: 8),
              Divider(thickness: 1, color: color3, indent: 10, endIndent: 10),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: welcomePageIcons(
                  'East Refund and return',
                  Icons.attach_money_rounded,
                  color1,
                ),
              ),
              SizedBox(height: 8),
              Divider(thickness: 1, color: color3, indent: 10, endIndent: 10),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: welcomePageIcons(
                  'Secure and Safe',
                  Icons.security,
                  Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 300,
        height: 230,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to our Store',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Get your grocery in as fast as',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            Text(
              'one hours',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 270,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SigninPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                child: Text('Go to Sign In Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
