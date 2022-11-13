import 'package:weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryNmae);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryNmae) async {
    try {
      var response = await Dio().get(
          '${AppConstants.baseUrl}/weather?q=$countryNmae&appid=${AppConstants.apiKey}');
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
