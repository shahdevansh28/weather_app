import 'dart:convert';
import 'package:weatherapp_starter_project/api/api_key.dart';
import 'package:weatherapp_starter_project/model/weather/sys.dart';
import 'package:weatherapp_starter_project/model/weather/weather.dart';
import 'package:weatherapp_starter_project/model/weather/wind.dart';
import 'package:weatherapp_starter_project/model/weather_data.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp_starter_project/model/weather_data_current.dart';

import '../utils/api_url.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  //procssing the data from response => to json
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
      WeatherDataCurrent.fromJson(jsonString),
      WeatherDataWind.fromJson(jsonString),
      WeatherDataSys.fromJson(jsonString),
      //WeatherDataweather.fromJson(jsonString),
    );
    return weatherData!;
  }

  Future<WeatherData> processDataCity(city) async {
    var response = await http.get(Uri.parse(apiURLCity(city)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
      WeatherDataCurrent.fromJson(jsonString),
      WeatherDataWind.fromJson(jsonString),
      WeatherDataSys.fromJson(jsonString),
      //WeatherDataweather.fromJson(jsonString),
    );
    return weatherData!;
  }
}
