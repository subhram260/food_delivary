import 'dart:convert';
import 'package:food_delivary/model/restaurant_model.dart';
import 'package:http/http.dart' as http;

class RestaurantApi {
  static Future<List<Restaurant>> getRestaurant() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "de23dd8857mshfc93e37a286643dp15c2dajsn2e8febb6987a",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Restaurant.restaurantFromSnapshot(_temp);
  }
}

//de23dd8857mshfc93e37a286643dp15c2dajsn2e8febb6987a
