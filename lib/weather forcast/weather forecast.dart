import 'package:flutter/material.dart';
import 'package:untitled/weather%20forcast/network/network.dart';
import 'package:untitled/weather%20forcast/ui/interface.dart';
import 'model/weather forecast model.dart';

class WeatherForeCast extends StatefulWidget {
  const WeatherForeCast({Key? key}) : super(key: key);

  @override
  WeatherForeCastState createState() => WeatherForeCastState();
}

class WeatherForeCastState extends State<WeatherForeCast> {
  late Future<WeatherForecastModel> data;
  String cityName = "london";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getWeather();
    // print(data);
    // data.then((weather) => print(weather.city?.country));
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(children: [
        TextFieldView(),
        Container(
            child: FutureBuilder(
                future: data,
                builder: (BuildContext context,
                    AsyncSnapshot<WeatherForecastModel> snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        midView(snapshot),
                        midView2(snapshot),
                        BottomView(snapshot),
                      ],
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })),

      ]),
    );
  }

  Widget TextFieldView() {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextField(
          decoration: InputDecoration(
              prefixText: "CityName",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onSubmitted: (value) {
            setState(() {
              cityName = value;
              data = getWeather();
            }
            );
          },

        )
    );
  }
  Future<WeatherForecastModel> getWeather() => Network().getdata(cityName);

}