import 'package:flutter/material.dart';
class BarShow extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
  return GestureDetector(
    onTap:() {
      final snackBar=SnackBar(
        backgroundColor: Colors.lightGreen.shade900,
          duration:Duration(milliseconds:500),
        content:Text("CORRECT"),);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  );
  }
}
class Bar extends StatelessWidget{
@override
Widget build(BuildContext context) {
  // TODO: implement build
  return GestureDetector(
      onTap:() {
        final snackBar=SnackBar(
            backgroundColor: Colors.red.shade900,
          duration:Duration(milliseconds:500),
          content:Text("INCORRECT"),);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
  );
}
}