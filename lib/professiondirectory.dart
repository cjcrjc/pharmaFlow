import 'package:flutter/material.dart';

class Directory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Professions',
        textAlign: TextAlign.center,
      )),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            //Text('Directory'),
            ElevatedButton(
                style: const ButtonStyle(alignment: Alignment.center),
                onPressed: () {
                  Navigator.pushNamed(context, '/Pharmacy');
                },
                child: const Text('Pharmacy')),
            ElevatedButton(
                style: const ButtonStyle(alignment: Alignment.center),
                onPressed: () {},
                child: const Text('Doctor')),
            ElevatedButton(
                style: const ButtonStyle(alignment: Alignment.center),
                onPressed: () {},
                child: const Text('Massage')),
            ElevatedButton(
                style: const ButtonStyle(alignment: Alignment.center),
                onPressed: () {},
                child: const Text('Physio')),
            ElevatedButton(
                style: const ButtonStyle(alignment: Alignment.center),
                onPressed: () {},
                child: const Text('Chiro')),
          ])),
    );
  }
}
