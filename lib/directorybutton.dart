import 'package:flutter/material.dart';

class DirectoryButton extends StatelessWidget {
  final String label;
  final String directory;
  const DirectoryButton({
    required this.label,
    required this.directory,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(alignment: Alignment.center),
        onPressed: () {
          Navigator.pushNamed(context, directory);
        },
        child: Text(label));
  }
}
