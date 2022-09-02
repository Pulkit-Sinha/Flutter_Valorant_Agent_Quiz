import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox( height: 20,),
        Question(
          questions[questionIndex]['questionText'],
        ),
        SizedBox(height: 10,),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['bri'], answer['rey'], answer['vip'], answer['kill'], answer['om'], answer['cy'], answer['so'], answer['sa'], answer['ph'], answer['je'], answer['ra'], answer['as'], answer['bre'], answer['sk'], answer['yo'], answer['ka'], answer['fa'], answer['ne'], answer['cha']), answer['text']);
        }).toList()
      ],
    );
  }
}
