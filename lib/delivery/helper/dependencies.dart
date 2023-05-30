import 'package:flutter_day1/delivery/data/api/api_client.dart';
import 'package:flutter_day1/delivery/data/control/control.dart';
import 'package:flutter_day1/delivery/data/repository/repo.dart';
import 'package:get/instance_manager.dart';

Future<void> initClient() async {
  Get.lazyPut(() => Apiclient(""));
  Get.lazyPut(() => PopularProductRepo());
  Get.lazyPut(() => ProductController(Get.find()));
}
