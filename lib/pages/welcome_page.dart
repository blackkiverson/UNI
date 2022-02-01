import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                            width: MediaQuery.of(context).size.width - 50,
                            height: MediaQuery.of(context).size.height - 300,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Next",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue.shade400)
                                      )
                                ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
