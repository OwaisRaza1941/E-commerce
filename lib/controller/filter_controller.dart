import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  RxList<String> selectedCategories = <String>[].obs;
  RxList<String> selectedBrands = <String>[].obs;

  RxList<ProductModel> filteredProducts = <ProductModel>[].obs;
  final List<ProductModel> allProducts;

  FilterController(this.allProducts);

  void toggleCategory(String category) {
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
  }

  void toggleBrand(String brand) {
    if (selectedBrands.contains(brand)) {
      selectedBrands.remove(brand);
    } else {
      selectedBrands.add(brand);
    }    
    print(brand);
  }

  void applyFilter() {
    filteredProducts.value =
        allProducts.where((product) {
          final matchesCategory =
              selectedCategories.isEmpty ||
              selectedCategories.contains(product.category);
          final matchesBrand =
              selectedBrands.isEmpty || selectedBrands.contains(product.brand);
          return matchesCategory && matchesBrand;
        }).toList();

    print("Filtered Products: ${filteredProducts.length}");
  }
}
