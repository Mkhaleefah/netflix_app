import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_uiapp/screen/recreateui/WeatherPage/Weather_controller.dart';

class WeatherPage extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());
  final TextEditingController cityNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
        
         Text('Weather App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: cityNameController,
              decoration: InputDecoration(labelText: 'Enter City Name'),
            ),
              SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                final cityName = cityNameController.text;

                if (cityName.isNotEmpty) {
                  weatherController.fetchWeatherByCityName(cityName);
                } else {
                  
                }
              },
              child: Text('Get Weather'),
            ),
            SizedBox(height: 10,),
            Obx(
              () => weatherController.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : WeatherInfoWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherInfoWidget extends StatelessWidget {
  final WeatherController weatherController = Get.find();

  @override
  Widget build(BuildContext context) {
    final weatherData = weatherController.weatherData;

    if (weatherData.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Location: ${weatherData['name']}, ${weatherData['sys']['country']}'),
          Text('Temperature: ${(weatherData['main']['temp']-273.15).toStringAsFixed(2)}°C'),
          Text('Weather: ${weatherData['weather'][0]['description']}'),
        ],
      );
    } else {
      return Text('Enter a valid city name to get weather data');
    }
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'Weather_controller.dart';

// class WeatherPage extends StatelessWidget {
//   final WeatherController weatherController = Get.put(WeatherController());
//   final TextEditingController latitudeController = TextEditingController();
//   final TextEditingController longitudeController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Weather App'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: latitudeController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: 'Latitude'),
//             ),
//             TextField(
//               controller: longitudeController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: 'Longitude'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 final lat = double.tryParse(latitudeController.text);
//                 final lon = double.tryParse(longitudeController.text);

//                 if (lat != null && lon != null) {
//                   weatherController.fetchWeather(lat, lon);
//                 } else {
//                   // Handle invalid input
//                 }
//               },
//               child: Text('Get Weather'),
//             ),
//             Obx(
//               () => weatherController.isLoading.value
//                   ? CircularProgressIndicator()
//                   : WeatherInfoWidget(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class WeatherInfoWidget extends StatelessWidget {
//   final WeatherController weatherController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     final weatherData = weatherController.weatherData;

//     if (weatherData.isNotEmpty) {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Text('Location: ${weatherData['name']}, ${weatherData['sys']['country']}'),
//           Text('Temperature: ${weatherData['main']['temp']}°C'),
//           Text('Weather: ${weatherData['weather'][0]['description']}'),
//         ],
//       );
//     } else {
//       return Text('Enter valid latitude and longitude to get weather data');
//     }
//   }
// }