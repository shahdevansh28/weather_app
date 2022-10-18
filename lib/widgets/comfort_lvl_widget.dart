import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:weatherapp_starter_project/model/weather_data_current.dart';
import 'package:weatherapp_starter_project/utils/custom_colors.dart';

class ComfortLevel extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const ComfortLevel({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(top: 1, left: 20, right: 20, bottom: 20),
          child: const Text(
            "Comfort Level",
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          height: 180,
          child: Column(children: [
            Center(
              child: SleekCircularSlider(
                min: 0,
                max: 100,
                initialValue: weatherDataCurrent.main.humidity!.toDouble(),
                appearance: CircularSliderAppearance(
                    customWidths: CustomSliderWidths(
                        handlerSize: 0, trackWidth: 12, progressBarWidth: 12),
                    infoProperties: InfoProperties(
                        bottomLabelText: "Humidity",
                        bottomLabelStyle: const TextStyle(
                            letterSpacing: 0.1, fontSize: 14, height: 1.5)),
                    animationEnabled: true,
                    size: 140,
                    customColors: CustomSliderColors(
                        hideShadow: true,
                        trackColor:
                            CustomColors.firstGradientColor.withAlpha(100),
                        progressBarColors: [
                          CustomColors.firstGradientColor,
                          CustomColors.secondGradientColor
                        ])),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Feels Like ",
                      style: TextStyle(
                        fontSize: 14,
                        height: 0.8,
                        color: CustomColors.textColorBlack,
                        fontWeight: FontWeight.w400,
                      )),
                  TextSpan(
                      text: "${weatherDataCurrent.main.feelsLike}",
                      style: TextStyle(
                        fontSize: 14,
                        height: 0.8,
                        color: CustomColors.textColorBlack,
                        fontWeight: FontWeight.w400,
                      ))
                ]))
              ],
            )
          ]),
        )
      ],
    );
  }
}
