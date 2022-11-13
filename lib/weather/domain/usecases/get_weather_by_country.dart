import '../entities/weather.dart';
import '../repositry/base_weather_repositry.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepositry
      repositry; //! usecase layer must call domain repositry layer

  GetWeatherByCountryName(this.repositry);

  Future<Weather> excute(String cityName) async {
    return await repositry.getWeatherByCityName(cityName);
  }
}
