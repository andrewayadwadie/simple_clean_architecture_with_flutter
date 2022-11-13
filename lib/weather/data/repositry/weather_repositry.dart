import 'package:weather/weather/data/data_source/remote_data_source.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repositry/base_weather_repositry.dart';

class WeatherRepositry implements BaseWeatherRepositry {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepositry(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryNmae) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryNmae))!;
  }
}
