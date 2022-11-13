import '../entities/weather.dart';

abstract class BaseWeatherRepositry {
  Future<Weather> getWeatherByCityName(String cityName);
}
