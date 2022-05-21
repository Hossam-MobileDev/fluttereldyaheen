
import 'package:fluttereldyaheen/controllers/ads_horizontal_controller.dart';
import 'package:fluttereldyaheen/data/repository/adds_horizontal_repo.dart';
import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/home_category_repo.dart';
import '../utils/app_constants.dart';

Future<void> init()async {
Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

Get.lazyPut(() => AddsHorizontalRepo(apiClient: Get.find()));
Get.lazyPut(() => AddsHorizontalController(addsHorizontalRepo: Get.find()));

Get.lazyPut(() => HomeCategoryRepo(apiClient: Get.find()));
Get.lazyPut(() => CategoryController(homeCategoryRepo: Get.find()));
}