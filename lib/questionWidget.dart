import 'package:flutter/material.dart';
import 'constants.dart';

class QuestionWidget extends StatelessWidget {

  final String question;
  final int indexAction;
  final int totalQuestion;

  const QuestionWidget(
      {Key? key, required this.question, required this.indexAction, required this.totalQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text('Question ${indexAction + 1} /$totalQuestion: $question',
          style: const TextStyle(
        fontSize: 24.0, color: neutral,
      )),
    );
  }
}
