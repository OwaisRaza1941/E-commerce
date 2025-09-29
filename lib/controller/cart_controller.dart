import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <ProductModel, int>{}.obs;

  void addToCart(ProductModel product) {
    if (cartItems.containsKey(product)) {
      cartItems[product] = cartItems[product]! + 1;
    } else {
      cartItems[product] = 1;
    }
    update();
  }

  void removeFromCart(ProductModel product) {
    cartItems.remove(product);
    update();
  }

  void increaseQuantity(ProductModel product) {
    if (cartItems.containsKey(product)) {
      cartItems[product] = cartItems[product]! + 1;
    }
    update();
  }

  void decreaseQuantity(ProductModel product) {
    if (cartItems.containsKey(product) && cartItems[product]! > 1) {
      cartItems[product] = cartItems[product]! - 1;
    }
    update();
  }

  int getQuantity(ProductModel product) {
    return cartItems[product] ?? 0;
  }

  double get totalPrice {
    double total = 0.0;
    cartItems.forEach((product, qty) {
      total += product.price * qty;
    });
    return total;
  }
}
