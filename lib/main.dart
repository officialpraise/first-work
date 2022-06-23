import 'package:flutter/material.dart';
//  import 'package:untitled/parsing%20json/json%20parsing.dart';
//  import 'package:untitled/parsing%20json/json%20parsing%20map.dart';
// import 'package:untitled/weather%20forcast/model/weather%20forecast%20model.dart';
//import 'package:untitled/weather%20forcast/weather%20forecast.dart';

import 'matrix_calculator/ui.dart';


//import 'package:mortgage_payment_starter_app/ui/mortgage_app.dart';
//import 'mortgage_app.dart';
//import 'mortgage app 2.dart';
//import 'colors.dart';

// final ThemeData mortgageTheme = buildMortgage();
//
// ThemeData buildMortgage() {
//   final ThemeData base = ThemeData.light();
//   return base.copyWith(
//       colorScheme: ColorScheme.fromSwatch().copyWith(primary: primaryColorDark),
//       primaryColor: primarypink900,
//       scaffoldBackgroundColor: secondaryBackgroundwhite,
//       hintColor: textonsecondaryBlack,
//       textTheme: buildMortgageTextTheme(base.textTheme),
//       inputDecorationTheme: InputDecorationTheme(
//           border: OutlineInputBorder(
//               borderSide: BorderSide(color: primaryColorlight),
//               borderRadius: BorderRadius.circular(12),
//           )
//       ),
//       floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
//       elevation: 7,
//     splashColor: primaryColorlight,
//     backgroundColor: secondaryColorDark,
//   )
//   );
//
// }
//
// buildMortgageTextTheme(TextTheme base) {
//   return base.copyWith(
//     bodyText1: TextStyle(color: textonprimarypink200, fontSize: 16),
//     bodyText2: TextStyle(color: textonprimarypink200, fontSize: 16),
//   );
// }

void main() => runApp(
    const MaterialApp(
      //theme: mortgageTheme,
      home:MatrixCalculator(),
    ));
// import 'package:untitled/ui/home.dart';
//
// final ThemeData apptheme = buildAppTheme();
//
// ThemeData buildAppTheme() {
//   final ThemeData base = ThemeData.dark();
//   return base.copyWith(
//       brightness: Brightness.dark,
//       primaryColor: Colors.purple,
//       scaffoldBackgroundColor: Colors.red,
//       colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
//       backgroundColor: Colors.amber,
//       textTheme: TextTheme(C
//           bodyText1: TextStyle(
//         fontSize: 45,
//       )));
// }
//
// void main() {
//   runApp(MaterialApp(
//     theme: apptheme,
//     // theme: ThemeData(
//     //   brightness: Brightness.dark,
//     //   primaryColor:Colors.grey[100],
//     //   textTheme: TextTheme(
//     //     headline1:TextStyle(
//     //       fontSize: 34,
//     //       fontWeight: FontWeight.bold
//     //     ),
//     //   bodyText1: TextStyle(
//     //       fontSize: 80,
//     //     color: Colors.blue[100]
//     //   ),
//     //
//     //   ),
//     //
//     // ),
//     home: QuizApp(),
//   ));
// }
