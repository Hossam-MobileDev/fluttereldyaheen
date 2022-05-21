import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';


class HomeCategoryRepo extends GetxService{
  final ApiClient apiClient;

  HomeCategoryRepo({required this.apiClient});
  Future<Response>getMainCategory() async{
    return await apiClient.getMainCategoryHome(AppConstants.HOME_CATEGORY_UI);
  }
}