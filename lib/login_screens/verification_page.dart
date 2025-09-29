import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/login_screens/number_page.dart';
import 'package:e_commerce_app/login_screens/select_location_page.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context, NumberPage());
                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              SizedBox(height: 75),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Enter your 4-digit code',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Code'),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '- - - - - ',
                    hintStyle: TextStyle(fontSize: 25),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, top: 130, left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Resend Code',
                      style: TextStyle(fontSize: 18, color: color2),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: color2,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectLocationPage(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
