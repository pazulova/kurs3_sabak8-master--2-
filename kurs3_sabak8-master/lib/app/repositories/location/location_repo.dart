 import 'package:geolocator/geolocator.dart';
import 'package:kurs3_sabak8/app/servises/location/location_servis.dart';

class LocationRepo {

Future<Position> getCurrentLocation () async {
  return await locationService.getCurrentLocation();
}

 }

 final LocationRepo locationRepo =LocationRepo();