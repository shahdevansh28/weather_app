import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:weatherapp_starter_project/controller/global_controller.dart';
import 'package:get/get.dart';
import 'package:weatherapp_starter_project/model/weather/main.dart';
import 'package:weatherapp_starter_project/utils/custom_colors.dart';
import 'package:weatherapp_starter_project/widgets/comfort_lvl_widget.dart';
import 'package:weatherapp_starter_project/widgets/current_weather_widget.dart';
import 'package:weatherapp_starter_project/widgets/header_widget.dart';

import '../api/fetch_weather.dart';
import '../model/weather/sys.dart';
import '../model/weather/wind.dart';
import '../model/weather_data.dart';
import '../model/weather_data_current.dart';
import '../utils/api_url.dart';
import '../widgets/rise_set_time_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = new TextEditingController();
  // Future<WeatherData> processDataByCity(search_city) async {
  //   //print("Hello");
  //   var response = await http.get(Uri.parse(apiURLCity(search_city)));
  //   var jsonString = jsonDecode(response.body);
  //   weatherData = WeatherData(
  //     WeatherDataCurrent.fromJson(jsonString),
  //     WeatherDataWind.fromJson(jsonString),
  //     WeatherDataSys.fromJson(jsonString),
  //   );
  //   return weatherData!;
  // }

  WeatherData? weatherData;
  //call
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    var city_name_list = [
      "London",
      "New York",
      "Paris",
      "Delhi",
      "Mumbai",
      "Ahmedabad",
      "Pune",
      "Banglore"
    ];
    final _random = new Random();
    var city = city_name_list[_random.nextInt(city_name_list.length)];
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => globalController.checkLoading().isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        //Search Container
                        padding: EdgeInsets.all(8),
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print(searchController.text);
                                //   String search_city = searchController.text;
                                //   return FetchWeatherAPI().processDataCity(search_city).then(){
                                //     weatherData.value = value;
                                //   }
                                // },
                              },
                              child: Container(
                                child: Icon(Icons.search),
                                margin: EdgeInsets.fromLTRB(2, 0, 5, 0),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: searchController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search for ${city}",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const HeaderWidget(),
                      //For Current Temp from ('current')
                      CurrentWeatherWidget(
                        weatherDataCurrent:
                            globalController.getData().getCurrentWeather(),
                        weatherDataWind:
                            globalController.getData().getCurrentWind(),
                        // weatherDataweather:
                        //     globalController.getData().getCurrentweather(),
                      ),
                      Container(
                        height: 1,
                        color: CustomColors.dividerLine,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SetRiseTimeWidget(
                        weatherDataSys:
                            globalController.getData().getCurrentSys(),
                      ),
                      Container(
                        height: 1,
                        color: CustomColors.dividerLine,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ComfortLevel(
                        weatherDataCurrent:
                            globalController.getData().getCurrentWeather(),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
