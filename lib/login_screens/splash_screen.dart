import 'package:e_commerce_app/login_screens/welcom3_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcom3Page()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double logoSize = size.width * 0.4;
    if (logoSize > 200) {
      logoSize = 200; // Limit the size
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 202, 68, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: logoSize,
                height: logoSize,
                child: Image.asset(
                  'assets/splash_screen_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'DESHI MART',
                style: TextStyle(
                  fontSize: size.width * 0.07 > 30 ? 30 : size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
