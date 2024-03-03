// ignore: file_names
import 'package:flutter/material.dart';
import './question.dart';

class UTI extends StatelessWidget {
  const UTI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Covid Assessment')),
        body: Column(
          children: [
            Question('Discharge'),
            Question('Painful Urination'),
            Question('Frequent Urination'),
          ],
        ));
  }
}
