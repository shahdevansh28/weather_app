import 'package:flutter/material.dart';
import 'package:weatherapp_starter_project/model/weather/sys.dart';
import 'package:weatherapp_starter_project/model/weather/wind.dart';
import 'package:weatherapp_starter_project/model/weather_data_current.dart';
import 'package:weatherapp_starter_project/utils/custom_colors.dart';

class SetRiseTimeWidget extends StatelessWidget {
  final WeatherDataSys weatherDataSys;

  const SetRiseTimeWidget({
    Key? key,
    required this.weatherDataSys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //temp area
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CustomColors.cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/windspeed.png"),
            ),
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: CustomColors.cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/clouds.png"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
              width: 100,
              child: Text(
                "${DateTime.fromMillisecondsSinceEpoch(weatherDataSys.sys.sunset! * 1000)}",
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: Text(
                "${DateTime.fromMillisecondsSinceEpoch(weatherDataSys.sys.sunrise! * 1000)}",
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      ],
    );
  }
}

//   Widget temperatureAreaWidget() {
//     return Row(
//       children: [
//         Image.asset(
//           "assets/weather/01d.png",
//           height: 80,
//           width: 80,
//         ),
//         Container(
//           height: 50,
//           width: 1,
//           color: CustomColors.dividerLine,
//         ),
//         RichText(
//           text: TextSpan(children: [
//             TextSpan(
//                 text: "${weatherDataCurrent.main.temp}°",
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 68,
//                   color: CustomColors.textColorBlack,
//                 )),
//             TextSpan(
//                 //Description
//                 text: "${weatherDataCurrent.main.temp}",
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: Colors.grey,
//                 )),
//           ]),
//         )
//       ],
//     );
//   }

//   Widget currentWeatherMoreDetailsWidget() {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Container(
//               height: 60,
//               width: 60,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: CustomColors.cardColor,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Image.asset("assets/icons/windspeed.png"),
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: CustomColors.cardColor,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Image.asset("assets/icons/clouds.png"),
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: CustomColors.cardColor,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Image.asset("assets/icons/humidity.png"),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             SizedBox(
//               height: 20,
//               width: 60,
//               child: Text(
//                 "${weatherDataWind.wind.speed}km/h",
//                 style: const TextStyle(fontSize: 12),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//               width: 60,
//               child: Text(
//                 "${weatherDataCurrent.main.tempMax!.toInt()}°C",
//                 style: const TextStyle(fontSize: 12),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//               width: 60,
//               child: Text(
//                 "${weatherDataCurrent.main.tempMin!.toInt()}°C",
//                 style: const TextStyle(fontSize: 12),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }