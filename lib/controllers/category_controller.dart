
import 'package:fluttereldyaheen/models/categories.dart';
import 'package:get/get.dart';

import '../data/repository/home_category_repo.dart';
class CategoryController extends GetxController {

  final HomeCategoryRepo homeCategoryRepo;

  CategoryController({required this.homeCategoryRepo});

  List<dynamic> _categoryHomeListList = [];

  List<dynamic> get categoryHomeListList => _categoryHomeListList;

  bool _isLoaded = false;
  bool get isLoaded =>_isLoaded;
  Future<void> getCategoryHome() async {
    Response response = await homeCategoryRepo.getMainCategory();
    if (response.statusCode == 200) {
      print("got adds horizontal");
      _categoryHomeListList=[];
      _categoryHomeListList.addAll((response.body).map((x) => Category.fromJson(x)))
      ;

      print(_categoryHomeListList);
      _isLoaded = true;
      update();
    }
  }
}