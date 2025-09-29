import 'package:e_commerce_app/components/function.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 153, 52, 1),
        title: Text('Order History', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order History', style: TextStyle(fontSize: 18)),
              SizedBox(height: 25),
              orderHistoryCard(
                Icon(Icons.check_circle, color: Colors.green, size: 35),
              ),
              SizedBox(height: 20),
              orderHistoryCard(
                Icon(
                  Icons.delivery_dining_sharp,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              SizedBox(height: 20),
              orderHistoryCard(
                Icon(
                  Icons.cancel_presentation_sharp,
                  color: Colors.red,
                  size: 35,
                ),
              ),
              SizedBox(height: 20),

              orderHistoryCard(
                Icon(Icons.check_circle, color: Colors.green, size: 35),
              ),
              SizedBox(height: 20),

              orderHistoryCard(
                Icon(
                  Icons.delivery_dining_sharp,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              SizedBox(height: 20),

              orderHistoryCard(
                Icon(
                  Icons.cancel_presentation_sharp,
                  color: Colors.red,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
