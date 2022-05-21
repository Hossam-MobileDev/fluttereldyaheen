import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttereldyaheen/controllers/ads_horizontal_controller.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

import '../models/ads_horizontal.dart';

class AdsList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Color(0xFF342717),
        child: GetBuilder<AddsHorizontalController>(builder: (addscontroller){
          return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              //   physics: NeverScrollableScrollPhysics(),
              itemCount: addscontroller.horizontalAddsListList.length,
              itemBuilder: (context, position) {
              // return _buildListItem(position,addscontroller.horizontalAddsListList[position]);
                return Row(children: [
                  Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/ads_circle.png',),
                          fit: BoxFit.fill,
                        ),
                      )
                  ),
                  SizedBox(width: 10,),
                  Text(addscontroller.horizontalAddsListList[position].description!,style: TextStyle(color: Colors.white),),
                ],
                ) ;
              });
        })

        );






  }

/*
  Widget _buildListItem(int position, horizontalAddsListList) {
    return Row(children: [
      Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/ads_circle.png',),
              fit: BoxFit.fill,
            ),
          )
      ),
      SizedBox(width: 10,),
      Text(horizontalAddsListList.description!,style: TextStyle(color: Colors.white),),
    ],
    ) ;
  }
*/
}
