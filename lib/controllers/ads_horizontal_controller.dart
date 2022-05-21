
import 'dart:convert';

import 'package:fluttereldyaheen/data/repository/adds_horizontal_repo.dart';
import 'package:fluttereldyaheen/models/ads_horizontal.dart';
import 'package:get/get.dart';


class AddsHorizontalController extends GetxController {

  final AddsHorizontalRepo addsHorizontalRepo;

  AddsHorizontalController({required this.addsHorizontalRepo});

  List<dynamic> _horizontalAddsListList = [];

  List<dynamic> get horizontalAddsListList => _horizontalAddsListList;

  bool _isLoaded = false;
  bool get isLoaded =>_isLoaded;
  Future<void> getAddsHorizontalList() async {
    Response response = await addsHorizontalRepo.gethorizontalAddsList();
    if (response.statusCode == 200) {
      print("got adds horizontal");
_horizontalAddsListList=[];
       _horizontalAddsListList.addAll((response.body).map((x) => AdsHorizontal.fromJson(x)))
      ;

      print(_horizontalAddsListList);
      _isLoaded = true;
      update();
    }
  }
}