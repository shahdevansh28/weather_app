import '../api/api_key.dart';

String apiURL(var lattitude, var longitude) {
  String url;
  // if (c == null) {
  url =
      "https://api.openweathermap.org/data/2.5/weather?lat=$lattitude&lon=$longitude&appid=$apiKey&units=metric";
  // } else {
  // url =
  // "https://api.openweathermap.org/data/2.5/weather?q=$c&appid=0b4833acc5c9d7a643e93f4566bbdada";
  // }
  return url;
}

String apiURLCity(var city) {
  String url =
      "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=0b4833acc5c9d7a643e93f4566bbdada";
  return url;
}
