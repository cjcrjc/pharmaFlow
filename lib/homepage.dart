import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './authpage.dart';
import './verifyemailpage.dart';
import './botnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage(this.title, {super.key});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavigationBar1(),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.purple, Colors.deepPurple])),
          ),
          title: GestureDetector(
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, '/Home', (route) => false),
            child: const Text(
              textAlign: TextAlign.center,
              'PharmaFlow',
              // style: TextStyle(
              //   decoration: TextDecoration.underline,
              //   color: Colors.black,
              //fontSize: 20,
              //)
            ),
          ),
        ),
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const VerifyEmailPage();
            } else {
              return const AuthPage();
            }
          },
        ));
  }
}
