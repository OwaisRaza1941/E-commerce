import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/views/sucess_order_page.dart';
import 'package:flutter/material.dart';

class CartPageBottomsheet extends StatelessWidget {
  const CartPageBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(top: 15.0, left: 18.0, right: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Checkout',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: const Color.fromARGB(152, 199, 199, 199),
                  ),
                  SizedBox(height: 10),
                  bottomSheetRow(text1: 'Delivery', text2: 'Select Method'),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                    color: Color.fromARGB(152, 199, 199, 199),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Payment', style: TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Image.asset(
                            'assets/bottom_sheet.png',
                            height: 30,
                            width: 30,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward_ios_rounded, size: 18),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                    color: const Color.fromARGB(152, 199, 199, 199),
                  ),
                  SizedBox(height: 10),
                  bottomSheetRow(text1: 'Promo Code', text2: 'Pick discount'),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                    color: const Color.fromARGB(152, 199, 199, 199),
                  ),
                  SizedBox(height: 10),
                  bottomSheetRow(text1: 'Total Cost', text2: '\$13.97'),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 1,
                    color: Color.fromARGB(152, 199, 199, 199),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'By placing an order you agree to our',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('Terms And Conditions'),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SucessOrderPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: color2,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Place Order'),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color2,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text('Go to Checkout'),
    );
  }
}
