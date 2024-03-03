import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pharmacyapp/UTI.dart';
import 'package:pharmacyapp/start.dart';
import 'package:pharmacyapp/verifyemailpage.dart';

import './homepage.dart';
import './pharmacydirectory.dart';
import './pinkeye.dart';
import './covid.dart';
import './UTI.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();
final messengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: messengerKey,
      navigatorKey: navigatorKey,
      title: 'PharmaFlow',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
            brightness: Brightness.light,
          ),
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
                fontFamily: 'Trebuchet MS',
              )),
      home: const HomePage('PharmaFlow'),
      routes: <String, WidgetBuilder>{
        '/Home': (context) => const HomePage('PharmaFlow'),
        '/Pharmacy': (context) => const PharmacyDirectory(),
        '/PinkEye': (context) => const PinkEye(),
        '/Covid': (context) => const Covid(),
        '/UTI': (context) => const UTI(),
      },
    );
  }
}
