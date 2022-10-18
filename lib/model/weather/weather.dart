import 'clouds.dart';
import 'coord.dart';
import 'main.dart';
import 'sys.dart';
import 'wind.dart';

class WeatherDataweather {
  final Weather weather;
  WeatherDataweather({required this.weather});
  factory WeatherDataweather.fromJson(Map<String, dynamic> json) =>
      WeatherDataweather(weather: Weather.fromJson(json['weather']));
}

// class Weather {
//   int? id;
//   String? main;
//   String? description;
//   String? icon;

//   Weather({this.id, this.main, this.description, this.icon});

//   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//         id: json['id'] as int?,
//         main: json['main'] as String?,
//         description: json['description'] as String?,
//         icon: json['icon'] as String?,
//       );
//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'main': main,
//         'description': description,
//         'icon': icon,
//       };
// }

//
class Weather {
  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  Weather({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        coord: json['coord'] == null
            ? null
            : Coord.fromJson(json['coord'] as Map<String, dynamic>),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
        base: json['base'] as String?,
        main: json['main'] == null
            ? null
            : Main.fromJson(json['main'] as Map<String, dynamic>),
        visibility: json['visibility'] as int?,
        wind: json['wind'] == null
            ? null
            : Wind.fromJson(json['wind'] as Map<String, dynamic>),
        clouds: json['clouds'] == null
            ? null
            : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
        dt: json['dt'] as int?,
        sys: json['sys'] == null
            ? null
            : Sys.fromJson(json['sys'] as Map<String, dynamic>),
        timezone: json['timezone'] as int?,
        id: json['id'] as int?,
        name: json['name'] as String?,
        cod: json['cod'] as int?,
      );

  Map<String, dynamic> toJson() => {
        //'coord': coord?.toJson(),
        'weather': weather?.map((e) => e.toJson()).toList(),
        // 'base': base,
        // 'main': main?.toJson(),
        // 'visibility': visibility,
        // 'wind': wind?.toJson(),
        // 'clouds': clouds?.toJson(),
        // 'dt': dt,
        // 'sys': sys?.toJson(),
        // 'timezone': timezone,
        // 'id': id,
        // 'name': name,
        // 'cod': cod,
      };
}
