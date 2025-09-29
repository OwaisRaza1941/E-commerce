import 'package:e_commerce_app/controller/filter_controller.dart';
import 'package:e_commerce_app/controller/usersearch_controller.dart';
import 'package:e_commerce_app/views/explore_page.dart';
import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:e_commerce_app/views/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterPage extends StatelessWidget {
  FilterPage({super.key});

  final filterController = Get.put(FilterController(products));

  final List<String> categories = [
    'Eggs',
    'Noodles & Pasta',
    'Chips & Crisps',
    'Fast Food',
  ];

  final List<String> brands = [
    'Individual Collection',
    'Cocola',
    'Ifad',
    'Kazi Farmas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExplorePage()),
                    );
                  },
                  icon: Icon(Icons.close),
                ),
                SizedBox(width: 110),
                Text(
                  'Filters',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Color.fromRGBO(242, 243, 242, 1),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Obx(
                        () => Column(
                          children:
                              categories.map((category) {
                                return ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Checkbox(
                                    value: filterController.selectedCategories
                                        .contains(category),
                                    onChanged:
                                        (_) => filterController.toggleCategory(
                                          category,
                                        ),
                                  ),
                                  title: Text(category),
                                );
                              }).toList(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Brands',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Obx(
                        () => Column(
                          children:
                              brands.map((brand) {
                                return ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Checkbox(
                                    value: filterController.selectedBrands
                                        .contains(brand),
                                    onChanged:
                                        (_) =>
                                            filterController.toggleBrand(brand),
                                  ),
                                  title: Text(brand),
                                );
                              }).toList(),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            filterController.applyFilter();

                            // Sync filtered result to search controller
                            final searchCtrl = Get.find<UsersearchController>();
                            searchCtrl.filteredProducts.value =
                                filterController.filteredProducts;

                            searchCtrl.searchText.value =
                                "filter"; // Just to trigger filtered list in UI
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchPage(),
                              ),
                            );
                          },
                          child: Text("Apply Filter"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
