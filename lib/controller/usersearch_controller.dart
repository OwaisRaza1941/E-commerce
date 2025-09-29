import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class UsersearchController extends GetxController {
  var allProducts = <ProductModel>[].obs;
  var filteredProducts = <ProductModel>[].obs;
  Rx<String> searchText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    allProducts.addAll([
      ProductModel(
        name: 'Red Apple',
        image: 'assets/home_product2.png',
        price: 4.99,
        isPopular: true,
        piceis: '1kg, Priceg',
        description:
            'Apples are rich in fiber and antioxidants, supporting heart health, aiding digestion, and may reduce the risk of chronic diseases like diabetes and cancer.',
        productNutritons: '107 mg',
      ),
      ProductModel(
        name: 'Diet Coke',
        image: 'assets/bevegares_product1.png',
        price: 1.99,
        productNutritons: 'Apple',
        description:
            'Diet Coke may help reduce calorie and sugar intake, acting as a potential alternative to regular soda for weight management and blood sugar control.',
        isPopular: true,
        piceis: '355ml, Price',
      ),
      ProductModel(
        name: 'Egg Chicken White',
        image: 'assets/egg_chickenwhite.png',
        price: 1.99,
        productNutritons: 'Apple',
        description:
            'gg whites are a low-calorie, high-protein food that helps build and maintain muscle mass, promotes feelings of fullness for weight management.',
        isPopular: true,
        piceis: '4pcs, Priceg',
      ),
      ProductModel(
        name: 'Beef Bone',
        image: 'assets/home_product5.png',
        price: 4.99,
        description:
            'Beef bone broth benefits include supporting gut health, strengthening joints, and potentially improving skin elasticity due to its high collagen and gelatin content. ',
        piceis: '1kg, Priceg',
        productNutritons: '0.5–2 g',
        isPopular: true,
      ),
      ProductModel(
        name: 'Coca Cala Can',
        image: 'assets/bevegares_product5.png',
        price: 4.99,
        productNutritons: 'Apple',
        description:
            'A Coca-Cola can provides a temporary energy boost due to its caffeine and sugar content, which can increase alertness and cognitive performance, though these effects are short-lived and come with potential health risks if consumed regularly.',
        piceis: '325ml, Price',
        isPopular: true,
      ),
      ProductModel(
        name: 'Egg Pasta',
        image: 'assets/egg_pasta.png',
        price: 4.99,
        productNutritons: 'Apple',
        description:
            'Egg pasta is a good source of carbohydrates for energy and provides protein, which supports muscle health and development.',
        piceis: '325ml, Price',
        isPopular: true,
      ),
    ]);
  }

  void search(String query) {
    searchText.value = query;

    if (query.isEmpty) {
      filteredProducts.clear();
    } else {
      filteredProducts.value =
          allProducts
              .where(
                (product) =>
                    product.name.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
    }
  }

  List<ProductModel> get popularProducts =>
      allProducts.where((p) => p.isPopular).toList();
}
