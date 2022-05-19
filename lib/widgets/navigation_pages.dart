
import 'package:flutter/material.dart';
import 'package:fluttereldyaheen/screens/send_news.dart';

import '../screens/favourite.dart';
import '../screens/about_us.dart';
import '../screens/eltwasol.dart';
import '../screens/my_home.dart';

class NavigationPages extends StatefulWidget {
  const NavigationPages({Key? key}) : super(key: key);

  @override
  State<NavigationPages> createState() => _NavigationPages();
}

class _NavigationPages extends State<NavigationPages> {

  final List<IconData> _icons = const [
    Icons.home,
    Icons.star_border_outlined,
    Icons.near_me_outlined,
    Icons.email_outlined,
    Icons.wc_outlined
  ];
  int pageIndex = 0;

  final pages = [
    const MyHomePage(),
    const FavouritePage(),
    const SendNewsPage(),
    const EltwasolPage(),
    const AboutUsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label:'الرئيسية', icon: Icon(_icons[0]),backgroundColor: Color(0xFF342717)),
          BottomNavigationBarItem(label:'المفضلة', icon: Icon(_icons[1])),
          BottomNavigationBarItem(label:'ارسال خبر', icon: Icon(_icons[2])),
          BottomNavigationBarItem(label:'التواصل', icon: Icon(_icons[3])),
          BottomNavigationBarItem(label:'من نحن', icon: Icon(_icons[4])),
        ],
      ),
    );
  }
}

