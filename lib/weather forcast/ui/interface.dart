import 'package:flutter/material.dart';
import 'package:untitled/weather%20forcast/util/forecast%20util.dart';
import '../model/weather forecast model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../util/convert_icon.dart';

Widget midView(AsyncSnapshot<WeatherForecastModel> snapshot) {
  var city = snapshot.data!.city?.name;
  var country = snapshot.data?.city?.country;
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$city,$country",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
        ],
      ),
    ),
  );
}

Widget midView2(AsyncSnapshot<WeatherForecastModel> snapshot) {
  var dataList = snapshot.data?.list;
  var date = DateTime.fromMillisecondsSinceEpoch(dataList![0].dt! * 1000);
  return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Text(Util.getFormattedDDate(date),
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: WeatherGetICon(
                  dataList[0].weather![0].main, Colors.pinkAccent, 198),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${dataList[0].temp?.day?.toStringAsFixed(0)}°F",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(dataList[0].weather![0].description!.toUpperCase())
                  ],
                )),
            Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${dataList[0].speed?.toStringAsFixed(0)}Mi/h"),
                      Icon(
                        FontAwesomeIcons.wind,
                        size: 20,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${dataList[0].humidity?.toStringAsFixed(0)}%"),
                      Icon(
                        FontAwesomeIcons.solidGrinBeamSweat,
                        size: 20,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${dataList[0].temp?.max?.toStringAsFixed(0)}°F"),
                      Icon(
                        FontAwesomeIcons.temperatureHigh,
                        size: 20,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ]),
          ])));
}

Widget BottomView(AsyncSnapshot<WeatherForecastModel> snapshot) {
  var dataList = snapshot.data?.list;
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text("7-DAY WEATHER FORECAST",
            style: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
                fontSize: 10)),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
          height: 200,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 190,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff9661c3), Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                  ),
                  child: BottomRequired(snapshot, context, index)),
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 8,
            ),
            itemCount: dataList!.length,
          ))
    ],
  );
}

Widget BottomRequired(
    AsyncSnapshot<WeatherForecastModel> snapshot, context, int index) {
  var dataList = snapshot.data?.list;
  var day = DateTime.fromMillisecondsSinceEpoch(dataList![index].dt! * 1000);
  return Padding(
    padding: const EdgeInsets.only(right: 2.0),
    child: Column(children: [
      Center(
          child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(Util.getOnlyDay(day)),
      )),
      SizedBox(
        height: 20,
      ),
      Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 33,
            backgroundColor: Colors.white,
            child: WeatherGetICon(
                dataList[index].weather![0].main, Colors.pinkAccent, 50),
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                Text("${dataList[index].temp?.min?.toStringAsFixed(0)}°F"),
                Icon(
                  FontAwesomeIcons.arrowCircleDown,
                  size: 15,
                  color: Colors.white,
                ),
              ]),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text("${dataList[index].temp?.max?.toStringAsFixed(0)}°F"),
                  Icon(
                    FontAwesomeIcons.arrowCircleUp,
                    size: 15,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text("Hum:${dataList[index].humidity?.toStringAsFixed(0)}%"),
              SizedBox(
                height: 3,
              ),
              Text("Win:${dataList[index].speed?.toStringAsFixed(0)}Mi/h")
            ],
          ),
        ],
      )
    ]),
  );
}
