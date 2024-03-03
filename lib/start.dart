import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: const ButtonStyle(alignment: Alignment.center),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Pharmacy');
                        },
                        child: const Text('New Patient')),
                    ElevatedButton(
                        style: const ButtonStyle(alignment: Alignment.center),
                        onPressed: () {},
                        child: const Text('History')),
                  ]),
            ),
            // Expanded(
            //   child: Align(
            //       alignment: Alignment.bottomRight,
            //       child: Column(
            //         children: [
            //           ElevatedButton(
            //               onPressed: () => FirebaseAuth.instance.signOut(),
            //               child: const Text('Sign Out'))
            //         ],
            //       )),
            // ),
          ],
        ),
      ),
    );
    ;
  }
}
