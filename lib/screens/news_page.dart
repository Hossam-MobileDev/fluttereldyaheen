import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsPage extends StatelessWidget {
  var data = Get.arguments as String;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              data         ),
          backgroundColor: Color(0xFF745F48),
          centerTitle: true,
        ),
        body: Container(

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: PageView.builder(
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return _buildPageItem(position);
                    }),
              ),
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, position) {
                        return Container(

                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF997E5F)),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/img/news_back_nine.9.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                           height: 100,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ghghhhh",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Divider(
                                      color: Color(0xFF997E5F),
                                    ),
                                    Expanded(child: Row(
                                      children: [
                                        Text(
                                          "1",
                                          style:
                                          TextStyle(color: Color(0xFF66523D)),
                                        ),
                                        Icon(Icons.message),
                                        Text(
                                          "1044",
                                          style:
                                          TextStyle(color: Color(0xFF66523D)),
                                        ),
                                        Icon(Icons.visibility),
                                        Text(
                                          "1-4-2022",
                                          style:
                                          TextStyle(color: Color(0xFF66523D)),
                                        ),
                                        Icon(Icons.date_range),
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/food0.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: 50,
                                height: 50,
                              )
                            ],

                          ),
                        );
                      }))
            ])));
  }
}

Widget _buildPageItem(int position) {
  return Container(
    margin: EdgeInsets.all(3),
    height: 40,
    width: double.maxFinite - 20,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/img/food0.png"))),
  );
}
