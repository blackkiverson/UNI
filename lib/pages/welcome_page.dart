import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "wp-one.jpg",
    "wp-two.jpg",
    "wp-three.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(".Smif"),
      //   backgroundColor: Color(0xFF490B2F),
      //   centerTitle: true,
      // ),
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/" + images[index]
                    ),
                  // repeat: ImageRepeat.repeatX //Used to repeat 
                  // the image on the x-axis until filled.
                  fit: BoxFit.cover
                ),
              ),
            );
          }),
    );
  }
}
