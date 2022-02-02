import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smifapp/widgets/app_large_text.dart';
import 'package:smifapp/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "wp-one.jpg",
    "wp-two.jpg",
    "wp-four.jpg",
  ];

  Widget generateCircles(int index) {
    double normalRadius = 2;
    double currentIndexRadius = 5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: index != 0 ? normalRadius : currentIndexRadius,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: index != 1 ? normalRadius : currentIndexRadius,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: index != 2 ? normalRadius : currentIndexRadius,
        ),
      ],
    );
  }

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
                  image: AssetImage("img/" + images[index]),
                  // repeat: ImageRepeat.repeatX //Used to repeat
                  // the image on the x-axis until filled.
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                          text: (index == 1
                              ? "Express It"
                              : index == 2
                                  ? "Do It"
                                  : ""),
                          color: Colors.blue.shade400,
                          size: 36),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 280,
                        child: AppText(
                          text: (index == 1
                              ? "In every talent, gift, passion an expression is needed."
                              : index == 2
                                  ? "Anything is possible because anything can be learnt."
                                  : ""),
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      // SizedBox(
                      //   width: 200,
                      //   height: 450,
                      //   ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        height: MediaQuery.of(context).size.height -
                            (index == 0 ? 280 : 320),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                generateCircles(index),
                                SizedBox(
                                  child: index == 2
                                      ? ElevatedButton(
                                          onPressed: () {},
                                          child: const Text(
                                            //"> > >",
                                            "NEXT",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                            fixedSize:
                                                MaterialStateProperty.all(
                                                    const Size.fromWidth(100)),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    Colors.blue.shade600),
                                          ),
                                        )
                                      : index == 0
                                          ? Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: const Text(
                                                    //"> > >",
                                                    "GET STARTED",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  style: ButtonStyle(
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all(const Size
                                                                    .fromWidth(
                                                                130)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Colors
                                                                .blue.shade600),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 3, 16, 0),
                                                  child: Stack(
                                                    // mainAxisAlignment: MainAxisAlignment.center,
                                                    // ignore: prefer_const_literals_to_create_immutables
                                                    clipBehavior: Clip.none,
                                                    alignment:
                                                        AlignmentDirectional
                                                            .topStart,
                                                    children: [
                                                      const Text(
                                                        "If you have an existing account click",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Positioned(
                                                        top: -16,
                                                        right: -50,
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          child: const Text(
                                                            "here",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xffa6d6ff),
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          : null,
                                )
                              ],
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
