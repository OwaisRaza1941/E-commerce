import 'package:e_commerce_app/controller/favorite_controller.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouritePage extends StatelessWidget {
  FavouritePage({super.key});

  final FavoriteController favController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<FavoriteController>(
        builder: (favController) {
          return Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Favourites',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15),
                Divider(thickness: 1, color: color5),
                const SizedBox(height: 10),

                favController.favoriteListAdd.isEmpty
                    ? Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text("No favorites yet."),
                      ),
                    )
                    : Expanded(
                      child: ListView.builder(
                        itemCount: favController.favoriteListAdd.length,
                        itemBuilder: (context, index) {
                          final product = favController.favoriteListAdd[index];
                          return Card(
                            margin: const EdgeInsets.only(bottom: 12),
                            elevation: 3,
                            child: ListTile(
                              leading: Image.asset(
                                product.image,
                                width: 60,
                                height: 60,
                                fit: BoxFit.contain,
                              ),
                              title: Text(product.name),
                              subtitle: Text(product.price.toString()),
                              trailing: IconButton(
                                icon: Icon(Icons.favorite, color: Colors.red),
                                onPressed: () {
                                  favController.toggleFavorite(product);
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }
}
