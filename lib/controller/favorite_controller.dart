import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  List<ProductModel> favoriteListAdd = [];

  void toggleFavorite(ProductModel product) {
    product.isFavorite = !product.isFavorite;

    if (product.isFavorite) {
      favoriteListAdd.add(product);
    } else {
      favoriteListAdd.removeWhere((item) => item.name == product.name);
    }

    update();
  }
}
