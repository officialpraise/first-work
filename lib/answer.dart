import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor:Colors.white,
        color:Colors.blue,
        child: Text('ANSWER 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
