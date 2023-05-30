import 'package:flutter_day1/delivery/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  late Apiclient apiClient;

  PopularProductRepo() {
    this.apiClient = Apiclient("dfffff");
  }

  Future<Response> getProductList() async {
    return await apiClient.getData("https://www.dbdestech.com/api/product/list");
  }
}
