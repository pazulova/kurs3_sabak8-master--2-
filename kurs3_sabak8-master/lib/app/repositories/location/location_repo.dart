 import 'package:geolocator/geolocator.dart';
import 'package:getx_weather_app/app/servises/location/location_servis.dart';

class LocationRepo {

Future<Position> getCurrentLocation () async {
  return await locationService.getCurrentLocation();
}

 }

 final LocationRepo locationRepo =LocationRepo();