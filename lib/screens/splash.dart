

import 'package:flutter/material.dart';

import '../widgets/navigation_pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }
  _navigateToHome() async{
    await Future.delayed(Duration(microseconds: 1500),(){});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>NavigationPages()));
  }
  @override
  Widget build(BuildContext context) {
    return

      Container(
        width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/img/splash.png'),
    fit: BoxFit.fill,
    ),
    ));
  }
}
