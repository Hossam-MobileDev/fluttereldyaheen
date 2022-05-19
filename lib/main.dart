import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttereldyaheen/screens/splash.dart';
import 'package:fluttereldyaheen/screens/news_page.dart';
import 'package:get/get.dart';

import 'widgets/navigation_pages.dart';
import 'screens/my_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays ([]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF745F48), // navigation bar color
    statusBarColor: Color(0xFF745F48), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eldya7een Demo',
      home:  NavigationPages(),
    );
  }
}
