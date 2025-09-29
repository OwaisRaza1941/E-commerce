import 'package:e_commerce_app/components/function.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 153, 52, 1),
        centerTitle: true,
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 85, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: Color.fromARGB(67, 76, 175, 79),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Muhammad. Owais Raza',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('owaisraza55670@gmail.com'),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 105,
              decoration: BoxDecoration(
                color: Color.fromARGB(67, 76, 175, 79),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.list_alt, size: 30),
                  Icon(Icons.credit_card, size: 30),
                  Icon(Icons.location_on, size: 30),
                ],
              ),
            ),
            SizedBox(height: 20),
            profile(text: 'User Details', icon: Icon(Icons.person)),
            SizedBox(height: 13),

            profile(text: 'Settings', icon: Icon(Icons.settings)),
            SizedBox(height: 13),

            profile(text: 'Help & Supports', icon: Icon(Icons.help)),
            SizedBox(height: 13),

            profile(text: 'Change Language', icon: Icon(Icons.translate)),
            SizedBox(height: 13),

            profile(text: 'Logout', icon: Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }
}
