class WeatherDetails {
  final Sys sys;
  WeatherDetails({required this.sys});
  factory WeatherDetails.fromJson(Map<String, dynamic> json) =>
      WeatherDetails(sys: Sys.fromJson(json['sys']));
}

class Sys {
  int? sunrise;
  int? sunset;

  Sys({this.sunrise, this.sunset});

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        sunrise: json['sunrise'] as int?,
        sunset: json['sunset'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'sunrise': sunrise,
        'sunset': sunset,
      };
}
