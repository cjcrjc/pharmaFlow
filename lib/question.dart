import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String text;
  bool? checked = false;
  Question(this.text);
  @override
  State<Question> createState() => QuestionState();
}

class QuestionState extends State<Question> {
  //bool? _checked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(widget.text, textAlign: TextAlign.center),
        value: widget.checked,
        onChanged: (value) {
          setState(() {
            widget.checked = value;
          });
        });
  }
}
