import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marquee/marquee.dart';

class AdsList extends StatelessWidget {
  const AdsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Color(0xFF342717),
      child: ListView.builder(
         shrinkWrap: true,
          scrollDirection: Axis.horizontal,
       //   physics: NeverScrollableScrollPhysics(),
          itemCount: 50,
          itemBuilder: (context, position) {
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
            Text('data',style: TextStyle(color: Colors.white),),
            ],
                ) /*ListTile(
                leading: Icon(Icons.list),
                trailing: Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item "))*/;
          }),
    );
  }
}
