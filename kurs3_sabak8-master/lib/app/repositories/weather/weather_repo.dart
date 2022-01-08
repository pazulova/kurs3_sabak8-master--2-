  import 'package:geolocator/geolocator.dart';
import 'package:getx_weather_app/app/modules/weather_model.dart';
import 'package:getx_weather_app/app/servises/weather/weather_service.dart';

class WeatherRepo {

   Future<WeatherModel> getWeatherByLocation(Position position) async {
     final _data = await weatherService.getWeatherByLocation(position);
    return WeatherModel.fromJson(_data);
   }

   Future<WeatherModel> getWeatherByCityName(String city) async {
   final _data = await weatherService.getWeatherByCityName(city);
   return WeatherModel.fromJson(_data);
   }
  }



  final WeatherRepo weatherRepo = WeatherRepo();