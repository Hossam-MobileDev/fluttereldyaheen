
import 'package:fluttereldyaheen/models/categories.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

  static Future<List<Category>> fetchCategories() async {
    var response = await client.get(Uri.parse(
        'http://aldaihani.org/aldaih/api.php?mod=menu1'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return categoryFromJson(jsonString);
    } else {
      //show error message
      return [];
    }
  }
}