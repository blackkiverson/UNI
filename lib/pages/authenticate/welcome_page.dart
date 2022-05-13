import 'package:flutter/material.dart';
import 'package:uni/pages/authenticate/sign_up.dart';
import 'package:uni/widgets/app_large_text.dart';
import 'package:uni/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "wpone1.jpg",
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
                      // AppLogo(index == 0),
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        height: MediaQuery.of(context).size.height - (300),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                generateCircles(index),
                                SizedBox(
                                    child: index == 2
                                        ? ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SignUp(),
                                                ),
                                              );
                                            },
                                            child: const Text(
                                              "NEXT",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: ButtonStyle(
                                              fixedSize:
                                                  MaterialStateProperty.all(
                                                      const Size.fromWidth(
                                                          100)),
                                              backgroundColor:
                                                  MaterialStateProperty.all<Color>(                                                       
                                                      Colors.blue.shade600),
                                            ),
                                          )
                                        : null)
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
