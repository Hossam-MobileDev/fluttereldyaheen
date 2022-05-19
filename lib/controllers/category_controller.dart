
import 'package:fluttereldyaheen/models/categories.dart';
import 'package:get/get.dart';
import '../service/api_service.dart';
class CategoryController extends GetxController {
  var isLoading = true.obs;
  var categoryList = <Category>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      isLoading(true);
      var products = await ApiServices.fetchCategories();
      if (products != null) {
        categoryList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}