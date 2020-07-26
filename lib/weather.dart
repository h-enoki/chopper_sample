import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  Weather(this.link, this.title, this.location, this.forecasts);

  String link;
  String title;
  Location location;
  final List<Forecasts> forecasts;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class Forecasts {
  Forecasts(this.dateLabel, this.telop, this.date);

  String dateLabel;
  String telop;
  String date;

  factory Forecasts.fromJson(Map<String, dynamic> json) => _$ForecastsFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastsToJson(this);
}

@JsonSerializable()
class Location {
  Location(this.city, this.area, this.prefecture);

  String city;
  String area;
  String prefecture;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}



