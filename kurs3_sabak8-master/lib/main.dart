
import 'package:flutter/material.dart';
import 'package:getx_weather_app/app/app_constants/app_constants.dart';

import 'package:getx_weather_app/app/modules/city_ui_with_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appTitle,
      theme: ThemeData.dark(),
      home: CityUi(),
    );
  }
}


