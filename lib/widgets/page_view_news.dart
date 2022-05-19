import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewNews extends StatefulWidget {
  const PageViewNews({Key? key}) : super(key: key);

  @override
  State<PageViewNews> createState() => _PageViewNewsState();
}

class _PageViewNewsState extends State<PageViewNews> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.all(15),
        color: Color(0xFF453523),
        width: MediaQuery.of(context).size.width,
        height: 200,
child: PageView.builder(
    itemCount: 5,
    itemBuilder: (context,position){

  return _buildPageItem(position);
}),
        );


  }

  Widget _buildPageItem(int position) {
    return  Container(
      margin: EdgeInsets.all(3),
      height: 40,
      width:  double.maxFinite-20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
              fit: BoxFit.cover,
              image:
              AssetImage("assets/img/food0.png"))),
    );
  }
}
