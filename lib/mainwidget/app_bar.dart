import 'package:flutter/material.dart';

import '../constant/name_animals.dart';
import '../constant/path_image.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        // textAlign: TextAlign.center,
        AnimalsName.animals.toUpperCase(),
        style: const TextStyle(color: Colors.black, fontSize: 30),
      ),
      leading: const Icon(
        Icons.menu,
        size: 40,
        color: Colors.black,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image(image: AssetImage(PathOfTheImage.pawprint)),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
