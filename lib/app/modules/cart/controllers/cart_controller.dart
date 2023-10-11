import 'package:get/get.dart';

import '../../../components/Product.dart';

class CartController extends GetxController {
  //TODO: Implement CartController

  RxList<Product> cartItems = <Product>[].obs;

  get totalPrice => null;

  get itemPrice => null;

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }

  double calculateTotal(List<Product> cartItems) {
    double total = 0.0;
    for (var item in cartItems) {
      total += double.tryParse(item.price) ?? 0.0;
    }
    return total;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void removeItem(Product product) {}
}
