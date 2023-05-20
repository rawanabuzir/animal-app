import 'package:flutter/material.dart';
import '../constant/path_image.dart';
import '../mainwidget/app_bar.dart';
//import 'package:audioplayers/audioplayers.dart';
import '../mainwidget/buttonn.dart';
import '../mainwidget/the_images.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imagee = PathOfTheImage.animals;

  //AudioPlayer audioo = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const HomeAppBar(),
      body: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            AnimalsImage(
              image: imagee,
            ),
            const Divider(color: Colors.black, thickness: 2, height: 0),
            Funn(
              changge: (rawan, khaled) {
                imagee = rawan;
                //  audioo.setSourceAsset(khaled);
                //audioo.resume();
                setState(() {});
              },
            )
          ],
        ),
      ),
    ));
  }
}
