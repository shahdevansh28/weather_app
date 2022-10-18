class WeatherDataCurrent {
  final Main main;
  WeatherDataCurrent({required this.main});
  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) =>
      WeatherDataCurrent(main: Main.fromJson(json['main']));
}

class Main {
  int? temp;
  double? tempMin;
  double? tempMax;
  double? feelsLike;
  int? humidity;

  Main({this.temp, this.tempMin, this.tempMax, this.feelsLike, this.humidity});

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: (json['temp'] as num?)?.round(),
        tempMin: (json['temp_min'] as num?)?.toDouble(),
        tempMax: (json['temp_max'] as num?)?.toDouble(),
        feelsLike: (json['feels_like'] as num?)?.toDouble(),
        humidity: json['humidity'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'feels_like': feelsLike,
        'humidity': humidity,
      };
}

//  class Weather {
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
