import 'package:flutter_day1/delivery/data/repository/repo.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final PopularProductRepo repo;

  ProductController(this.repo);

  Future<void> getPopularProductList() async {
    Response response = await repo.getProductList();
    if (response.statusCode == 200) {
// _popularProductList.addAll(response.);
      update();
    } else {}
  }
}
