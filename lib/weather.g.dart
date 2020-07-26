// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
      json['link'] as String,
      json['title'] as String,
      json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      (json['forecasts'] as List)
          ?.map((e) =>
              e == null ? null : Forecasts.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'link': instance.link,
      'title': instance.title,
      'location': instance.location,
      'forecasts': instance.forecasts
    };

Forecasts _$ForecastsFromJson(Map<String, dynamic> json) {
  return Forecasts(json['dateLabel'] as String, json['telop'] as String,
      json['date'] as String);
}

Map<String, dynamic> _$ForecastsToJson(Forecasts instance) => <String, dynamic>{
      'dateLabel': instance.dateLabel,
      'telop': instance.telop,
      'date': instance.date
    };

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(json['city'] as String, json['area'] as String,
      json['prefecture'] as String);
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'city': instance.city,
      'area': instance.area,
      'prefecture': instance.prefecture
    };
