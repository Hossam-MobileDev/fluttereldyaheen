import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttereldyaheen/routes/route_helper.dart';
import 'package:fluttereldyaheen/screens/splash.dart';
import 'package:fluttereldyaheen/screens/news_page.dart';
import 'package:get/get.dart';

import 'helper/dependencies.dart';
import 'widgets/navigation_pages.dart';
import 'screens/my_home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
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
     // home:  NavigationPages(),
        initialRoute: RouteHelper.getSplashPage(),
        getPages: RouteHelper.routes
    );
  }
}
