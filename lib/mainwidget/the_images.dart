import 'package:flutter/material.dart';

class AnimalsImage extends StatelessWidget {
  const AnimalsImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              color: Colors.transparent,
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        ));
  }
}
