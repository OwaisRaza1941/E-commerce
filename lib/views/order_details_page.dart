import 'package:e_commerce_app/components/function.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 153, 52, 1),
        title: Text('Order Details', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Please check your order status to get the item '),
            Text('delivered to your home '),
            SizedBox(height: 25),
            orderDetails(context),
            Text('Fed 22 2024 ', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 25),
            orderDetails(context),
            Text('Fed 22 2024 ', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 25),
            orderDetails(context),
            Text('Fed 22 2024 ', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 25),
            orderDetails(context),
            Text('Fed 22 2024 ', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 25),
            orderDetails(context),
            Text('Fed 22 2024 ', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
