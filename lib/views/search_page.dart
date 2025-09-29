import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/controller/filter_controller.dart';
import 'package:e_commerce_app/controller/usersearch_controller.dart';
import 'package:e_commerce_app/views/filter_page.dart';
import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final UsersearchController searchCtrl = Get.put(UsersearchController());
  final FilterController filterCtrl = Get.put(FilterController(products));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: serchPageSearchBar(),
                  ),
                ),

                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FilterPage()),
                    );
                  },
                  icon: Icon(Icons.tune),
                ),
              ],
            ),
            SizedBox(height: 20),
            Obx(() {
              final query = searchCtrl.searchText.value;

              // Agar filter laga hai, to filtered products dikhayein
              final filterProducts = filterCtrl.filteredProducts;
              final showList =
                  filterProducts.isNotEmpty
                      ? filterProducts
                      : (query.isEmpty
                          ? searchCtrl.popularProducts
                          : searchCtrl.filteredProducts);

              if (query.isNotEmpty && showList.isEmpty) {
                return Center(child: Text("No product found"));
              }
              return Expanded(
                child: GridView.builder(
                  itemCount: showList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.80,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final product = showList[index];
                    return productCard(
                      context,
                      product,
                      nameProduct: product.name,
                      price: product.price.toString(),
                      piceis: product.piceis,
                      imagePath: product.image,
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
