import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttereldyaheen/widgets/ads_listt.dart';
import 'package:fluttereldyaheen/widgets/page_view_news.dart';

import '../widgets/categoryList.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('الرئيسية'),
        backgroundColor: Color(0xFF745F48),
      ),
      body: Column(
        children: [
          AdsList(),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [PageViewNews(), CategoryList()],
            )),
          )
        ],
      ),
    );
  }
}
