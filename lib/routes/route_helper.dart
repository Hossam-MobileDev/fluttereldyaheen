
import 'package:get/get.dart';
import '../screens/splash_page.dart';
import '../widgets/navigation_pages.dart';

class RouteHelper {
  static const String initial = "/";
static String splashPage = "/splash-page";
  static String getInitial() => '$initial';

static String getSplashPage()=>'$splashPage';





  static List<GetPage> routes = [
    GetPage(name: splashPage, page:()=> SplashPage()),
    GetPage(name: initial, page: () => NavigationPages()),

  ];
}
