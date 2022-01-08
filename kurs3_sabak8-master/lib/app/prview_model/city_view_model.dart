
import 'package:geolocator/geolocator.dart';
import 'package:kurs3_sabak8/app/modules/weather_model.dart';
import 'package:kurs3_sabak8/app/repositories/location/location_repo.dart';
import 'package:kurs3_sabak8/app/repositories/weather/weather_repo.dart';


class CityViewModel {
Position _position;
WeatherModel _weatherModel;

Position get getPosition => _position;
WeatherModel get getWeatherModel => _weatherModel;


getLocation() async {
final _position =  await locationRepo.getCurrentLocation();
_weatherModel  = await weatherRepo.getWeatherByLocation(_position);

}

  getWeatherByCityname(String cityName) async {
    _weatherModel = await weatherRepo.getWeatherByCityName(cityName);
  }

}

final CityViewModel cityViewodel = CityViewModel();