import 'package:flutter/material.dart';

import 'main.dart';

class Utils {
  static showSnackBar(String? text, Color color) {
    if (text == null) return;

    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: color,
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
