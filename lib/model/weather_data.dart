import 'package:weatherapp_starter_project/model/weather/sys.dart';
import 'package:weatherapp_starter_project/model/weather/weather.dart';
import 'package:weatherapp_starter_project/model/weather/wind.dart';
import 'package:weatherapp_starter_project/model/weather_data_current.dart';
import 'package:weatherapp_starter_project/model/weather_details.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  final WeatherDataWind? wind;
  final WeatherDataSys? sys;
  //final WeatherDataweather? weather;
  WeatherData([
    this.current,
    this.wind,
    this.sys,
    //this.weather,
  ]);

  //function to fetch these values
  WeatherDataCurrent getCurrentWeather() => current!;
  WeatherDataWind getCurrentWind() => wind!;
  WeatherDataSys getCurrentSys() => sys!;
  //WeatherDataweather getCurrentweather() => weather!;
}
