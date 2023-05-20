// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AnimalsBuildBtn extends StatelessWidget {
  const AnimalsBuildBtn(
      {super.key,
      this.color = Colors.indigo,
      required this.name,
      required this.ih,
      required this.onClick});
  final Color color;
  final String name;
  final void Function() onClick;
  final String ih;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
            ),
            onPressed: onClick,
            label: Text(name),
            icon: Image(width: 20, image: AssetImage(ih)),
          ),
        ));
  }
}
