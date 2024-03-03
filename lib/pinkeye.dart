import 'package:flutter/material.dart';
import './question.dart';

class PinkEye extends StatelessWidget {
  const PinkEye({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pinkeye Questions')),
        body: Column(
          children: [
            Question('Eye Pain'),
            Question('Blurred Vision'),
            Question('Discharge'),
            Question('Photophobia'),
            Question('Watery'),
            Question('Itchy'),
          ],
        ));
  }
}
