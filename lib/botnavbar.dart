import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          //color: Colors.purple
          gradient: LinearGradient(
              colors: <Color>[Colors.deepPurple, Colors.purple])),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                  icon: Icons.home,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/Home', (route) => false);
                  },
                  selected: _selectedIndex == 0,
                  text: 'Home',
                ),
                IconBottomBar(
                  icon: Icons.exit_to_app,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                    FirebaseAuth.instance.signOut();
                  },
                  selected: _selectedIndex == 1,
                  text: 'Sign Out',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {super.key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            size: 25,
            icon,
            color: selected ? Colors.white : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 13,
              height: .2,
              color: selected ? Colors.white : Colors.grey),
        )
      ],
    );
  }
}
