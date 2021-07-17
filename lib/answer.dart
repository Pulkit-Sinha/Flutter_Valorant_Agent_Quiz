import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        child: Text(answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 28,
        ),),
        onPressed: selectHandler,
      ),
    );
  }
}
