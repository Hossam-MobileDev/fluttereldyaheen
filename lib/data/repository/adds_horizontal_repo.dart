
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class AddsHorizontalRepo extends GetxService{
  final ApiClient apiClient;

  AddsHorizontalRepo({required this.apiClient});
  Future<Response>gethorizontalAddsList() async{
    return await apiClient.getAddsHorizontal(AppConstants.HORIZONTAL_ADDS_URI);
  }
}