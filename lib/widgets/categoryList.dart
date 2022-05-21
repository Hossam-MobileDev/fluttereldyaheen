import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttereldyaheen/controllers/category_controller.dart';
import 'package:fluttereldyaheen/models/categories.dart';
import 'package:fluttereldyaheen/screens/news_page.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {

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
      child: GetBuilder<CategoryController>(builder: (categorycontroller){
       return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: categorycontroller.categoryHomeListList.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {

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
                  Text( categorycontroller.categoryHomeListList[position].title!
                   , style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            );
          },
        );
        })

        );



  }
}
