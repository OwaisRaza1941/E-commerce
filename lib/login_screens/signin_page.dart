import 'package:e_commerce_app/components/buttons_sing_in_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/SingIn_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get your groceries\nwith nector',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
            SizedBox(height: 20),
            Text(
              'Or connect with social media',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 60),
            buttons(
              context: context,
              iconSize: 70,
              imagePath: "assets/google_icon.png",
              buttonBg: Colors.blue,

              text: "Continue With Google",
            ),
            SizedBox(height: 20),
            buttons(
              context: context,
              iconData: Icons.facebook,
              iconSize: 28,
              buttonBg: Color.fromRGBO(83, 131, 236, 0.541),
              text: "Continue with Facebook",
            ),
          ],
        ),
      ),
    );
  }
}
