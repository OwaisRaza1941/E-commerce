import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/controller/cart_controller.dart';
import 'package:e_commerce_app/controller/favorite_controller.dart';
import 'package:e_commerce_app/views/cart_page.dart';
import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key, required this.product});

  final ProductModel product;
  final CartController cartController = Get.put(CartController());
  final FavoriteController favController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<FavoriteController>(
        builder: (ctx) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  productDetailsImage(product), // image pehle daalo
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.file_download_outlined),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        favController.toggleFavorite(product);
                      },
                      icon: Icon(
                        product.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: product.isFavorite ? Colors.red : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  product.piceis,
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ✅ Quantity controls
                    Obx(() {
                      final qty = cartController.getQuantity(product);

                      return Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (qty > 0) {
                                cartController.decreaseQuantity(
                                  product,
                                ); // yahan decrease hoga
                              }
                            },
                            icon: Icon(Icons.remove),
                          ),

                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                qty.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          IconButton(
                            onPressed: () {
                              cartController.increaseQuantity(
                                product,
                              ); // yahan increase hoga
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      );
                    }),

                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Divider(indent: 20, endIndent: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_downward_sharp),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Text(product.description.toString()),
              ),

              SizedBox(height: 20),
              Divider(indent: 20, endIndent: 20),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nutritions",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(104, 158, 158, 158),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            product.productNutritons.toString(),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Divider(indent: 20, endIndent: 20),
              SizedBox(height: 20),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Review",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      children: [
                        starsReview(),
                        starsReview(),
                        starsReview(),
                        starsReview(),
                        starsReview(),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ],
                ),
              ),

              // ✅ Add to Cart Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromRGBO(83, 177, 117, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      cartController.addToCart(product);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                    child: Text("Add to Basket"),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Icon starsReview() => Icon(Icons.star, color: Color.fromRGBO(243, 96, 63, 1));
}
