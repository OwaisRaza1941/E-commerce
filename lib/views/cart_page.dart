import 'package:e_commerce_app/controller/cart_controller.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/views/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CartController>(
        builder: (cartController) {
          final products = cartController.cartItems.keys.toList();

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(right: 20.0, left: 15.0, top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'My Cart',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Divider(thickness: 1, color: color5),

                  // ✅ ListView of cart items
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final cartItem = products[index];
                      final qty = cartController.getQuantity(cartItem);

                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  cartItem.image,
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            cartItem.name,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.close),
                                            onPressed: () {
                                              cartController.removeFromCart(
                                                cartItem,
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Text(
                                        cartItem.piceis,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(height: 20),

                                      // ✅ Quantity buttons
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              IconButton(
                                                style: IconButton.styleFrom(
                                                  padding: EdgeInsets.all(10),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color:
                                                          const Color.fromARGB(
                                                            182,
                                                            180,
                                                            180,
                                                            180,
                                                          ),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          10,
                                                        ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  cartController
                                                      .decreaseQuantity(
                                                        cartItem,
                                                      );
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  size: 20,
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                qty.toString(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              IconButton(
                                                style: IconButton.styleFrom(
                                                  padding: EdgeInsets.all(10),
                                                  foregroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color:
                                                          const Color.fromARGB(
                                                            182,
                                                            180,
                                                            180,
                                                            180,
                                                          ),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          10,
                                                        ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  cartController
                                                      .increaseQuantity(
                                                        cartItem,
                                                      );
                                                },
                                                icon: Icon(Icons.add, size: 20),
                                              ),
                                            ],
                                          ),

                                          // ✅ Price display
                                          Obx(
                                            () => Text(
                                              '\$${(cartItem.price * cartController.getQuantity(cartItem)).toStringAsFixed(2)}',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (index != products.length - 1)
                            Divider(thickness: 1, color: Colors.grey),
                        ],
                      );
                    },
                  ),

                  SizedBox(height: 10),
                  SizedBox(
                    width: 335,
                    height: 55,
                    child: CartPageBottomsheet(),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
