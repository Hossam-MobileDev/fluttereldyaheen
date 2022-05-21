
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttereldyaheen/controllers/ads_horizontal_controller.dart';
import 'package:get/get.dart';

import '../controllers/category_controller.dart';
import '../routes/route_helper.dart';



class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
Future<void>loadResources() async {
  await Get.find<AddsHorizontalController>().getAddsHorizontalList();
  await Get.find<CategoryController>().getCategoryHome();

}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadResources();
    animationController=AnimationController
      (vsync: this,duration: Duration(seconds:2 ))..forward();
    animation = new CurvedAnimation(parent: animationController, curve:
    Curves.linear);

    Timer(
      Duration(seconds: 3),()=>Get.toNamed(RouteHelper.getInitial())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

    );
  }
}
