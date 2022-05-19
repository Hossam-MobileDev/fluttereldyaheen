import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttereldyaheen/controllers/category_controller.dart';
import 'package:fluttereldyaheen/models/categories.dart';
import 'package:fluttereldyaheen/screens/news_page.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  CategoryController categoryController = Get.put(CategoryController());
//var pages = [NewsScreen(),];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Obx(() {
       return
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: categoryController.categoryList.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                if(position==1){
                  Get.to(NewsPage(),
                      arguments: categoryController.categoryList[position].title,
                        );

                }
                else return null;
              } ,

              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      margin: new EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/row_bg.png'),
                          fit: BoxFit.fill,
                        ),
                      )),
                  Text(
                    categoryController.categoryList[position].title!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            );
          },
        );

      }),
    );
  }
}
