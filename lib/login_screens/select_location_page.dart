import 'package:e_commerce_app/login_screens/login_page.dart';
import 'package:e_commerce_app/login_screens/verification_page.dart';
import 'package:flutter/material.dart';

class SelectLocationPage extends StatelessWidget {
  const SelectLocationPage({super.key});

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
                  Navigator.pop(context, VerificationPage());
                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              SizedBox(height: 50),
              Center(
                child: Image.asset('assets/select_location.png', width: 200),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Select Your Location',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  'Switch on your location to stay in tune\nwith what\'s happening in your area',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Your Zone', style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Banasree',
                      suffixIcon: Transform.rotate(
                        angle: 4.71239,
                        child: Icon(Icons.arrow_back_ios, size: 18),
                      ),
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Your Area', style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Types of your area',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Transform.rotate(
                        angle: 4.71239,
                        child: Icon(Icons.arrow_back_ios, size: 18),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(83, 177, 117, 1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Submit', style: TextStyle(fontSize: 18)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
