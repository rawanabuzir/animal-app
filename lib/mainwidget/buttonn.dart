import 'package:animals/mainwidget/scalton_btn.dart';
import 'package:flutter/material.dart';
import '../constant/name_animals.dart';
import '../constant/path_image.dart';
import '../constant/sound.dart';
import '../constant/icon_path.dart';

class Funn extends StatelessWidget {
  const Funn({super.key, this.name = '', required this.changge});
  final String name;
  final void Function(String rawan, String) changge;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AnimalsBuildBtn(
              onClick: () => changge(PathOfTheImage.lion, AnimalsAudio.lion),
              ih: IconsPath.lion,
              name: AnimalsName.lion,
            ),
            AnimalsBuildBtn(
              onClick: () => changge(PathOfTheImage.cat, AnimalsAudio.cat),
              ih: IconsPath.cat,
              name: AnimalsName.cat,
              color: Colors.orange,
            ),
            AnimalsBuildBtn(
              onClick: () {
                changge(PathOfTheImage.cheetah, AnimalsAudio.cheetah);
              },
              ih: IconsPath.cheetah,
              name: AnimalsName.cheetah,
            ),
          ],
        ),
        Row(
          children: [
            AnimalsBuildBtn(
              onClick: () =>
                  changge(PathOfTheImage.crocodile, AnimalsAudio.crocodile),
              ih: IconsPath.crocodile,
              color: Colors.orange,
              name: AnimalsName.crocodile,
            ),
            AnimalsBuildBtn(
              onClick: () =>
                  changge(PathOfTheImage.elephant, AnimalsAudio.elephant),
              ih: IconsPath.elephant,
              name: AnimalsName.elephant,
            ),
            AnimalsBuildBtn(
              onClick: () => changge(PathOfTheImage.dog, AnimalsAudio.dog),
              ih: IconsPath.dog,
              name: AnimalsName.dog,
              color: Colors.orange,
            ),
          ],
        ),
        Row(
          children: [
            AnimalsBuildBtn(
              onClick: () => changge(PathOfTheImage.wolf, AnimalsAudio.wolf),
              ih: IconsPath.wolf,
              name: AnimalsName.wolf,
            ),
            AnimalsBuildBtn(
              onClick: () =>
                  changge(PathOfTheImage.giraffe, AnimalsAudio.giraffe),
              ih: IconsPath.giraffe,
              name: AnimalsName.giraffe,
              color: Colors.orange,
            ),
            AnimalsBuildBtn(
              onClick: () =>
                  changge(PathOfTheImage.parrot, AnimalsAudio.parrot),
              ih: IconsPath.parrot,
              name: AnimalsName.parrot,
            ),
          ],
        )
      ],
    );
  }
}
