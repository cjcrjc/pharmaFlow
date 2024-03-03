import 'package:flutter/material.dart';
import './question.dart';

class Covid extends StatelessWidget {
  const Covid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Covid Assessment')),
        body: Column(
          children: [
            Question('Cough'),
            Question('Sore Throat'),
            Question('Sinus Congestion'),
          ],
        ));
  }
}
