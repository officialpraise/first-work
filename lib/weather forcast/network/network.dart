import 'dart:convert';
import 'package:http/http.dart';
import 'package:untitled/weather%20forcast/util/forecast%20util.dart';

import '../model/weather forecast model.dart';
class Network {
  Future<WeatherForecastModel> getdata( String cityName) async {
    //String appId = "ed60fcfbd110ee65c7150605ea8aceea";
    String url = "https://api.openweathermap.org/data/2.5/forecast/daily?q="+cityName+"&cnt=7&appid="+Util.appId+"&units=imperial";
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(url);
     print(response.body);
      return WeatherForecastModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("failed to get data");
    }
  }
}