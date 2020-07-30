import 'package:chopper_sample/weather.dart';
import 'package:flutter/material.dart';
import 'api_service.dart';
import 'dart:convert' show json;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        body: Center(
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  int _count = 0;

  void _handlePressed() async {

    // APIリクエスト
    final myService = PostApiService.create();
    final response = await myService.getPost(cityId: 130010);
    print(response.body);

    var weather = Weather.fromJson(response.body);
    var location = weather.location;
    var forecasts = weather.forecasts;

    print('title: ${weather.title}');
    print('link: ${weather.link}');
    print('location: ${weather.location}');
    print('city: ${location.city}');
    print('area: ${location.area}');
    print('prefecture: ${location.prefecture}');
    print('forecasts: ${weather.forecasts}');
    print('dateLabel: ${forecasts[0].dateLabel}');
    print('telop: ${forecasts[0].telop}');
    print('date: ${forecasts[0].date}');
    print('dateLabel: ${forecasts[1].dateLabel}');
    print('telop: ${forecasts[1].telop}');
    print('date: ${forecasts[1].date}');
    print('dateLabel: ${forecasts[2].dateLabel}');
    print('telop: ${forecasts[2].telop}');
    print('date: ${forecasts[2].date}');

    //aaaa


    setState(() {
      _count++;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Text(
              "$_count",
              style: TextStyle(
                  color:Colors.blueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
              ),
            ),
            FlatButton(
              onPressed: _handlePressed,
              color: Colors.blue,
              child: Text(
                "更新",
                style: TextStyle(
                    color:Colors.white,
                    fontSize: 20.0
                ),
              ),
            )
          ],
        )
    );
  }
}