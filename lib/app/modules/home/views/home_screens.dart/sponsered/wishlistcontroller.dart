import 'package:get/get.dart';
import 'package:eapp/app/components/Product.dart';

class WishlistController extends GetxController {
  final RxSet<int> wishlistItemIndexes = <int>{}.obs;
  final RxList<Product> wishlistItems = <Product>[].obs;

  void toggleWishlistItem(int index, Product product) {
    if (wishlistItemIndexes.contains(index)) {
      wishlistItemIndexes.remove(index);
      wishlistItems.remove(product);
    } else {
      wishlistItemIndexes.add(index);
      wishlistItems.add(product);
    }
  }

  isWishlistItem(int index) {}
}
