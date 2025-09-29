import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/login_screens/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:e_commerce_app/login_screens/signin_page.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

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
                  Navigator.pop(context, SigninPage());
                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              SizedBox(height: 75),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Mobile Number'),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  initialCountryCode: 'PK',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 130, right: 20.0),
                    child: Container(
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
                                builder: (context) => VerificationPage(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          color: Colors.white,
                        ),
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
