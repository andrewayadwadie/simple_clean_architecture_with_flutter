import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather/weather/data/data_source/remote_data_source.dart';
import 'package:weather/weather/data/repositry/weather_repositry.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repositry/base_weather_repositry.dart';
import 'package:weather/weather/domain/usecases/get_weather_by_country.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepositry baseWeatherRepositry =
      WeatherRepositry(baseRemoteDataSource);
  Weather weather =
      await GetWeatherByCountryName(baseWeatherRepositry).excute("Egypt");
  log("Weather is :$weather");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: Center(
        child: Text(
          'Test',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
