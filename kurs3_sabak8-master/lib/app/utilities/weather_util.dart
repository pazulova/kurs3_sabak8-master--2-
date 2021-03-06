class WeatherUtil {
  double intToDouble(dynamic val) {
    if (val.runtimeType == double) {
      return val;
    } else if (val.runtimeType == int) {
      return val.toDouble();
    } else {
      throw Exception("value is not of type 'int' or 'double' got type '" +
          val.runtimeType.toString() +
          "'");
    }
  }

  int kelvinToCelcius(double kelvin) {
    return (kelvin - 273.15).round();
  }

  String getWeatherMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }
}

final WeatherUtil weatherUtil = WeatherUtil();
