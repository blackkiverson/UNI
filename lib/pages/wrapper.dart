import 'package:flutter/material.dart';
import 'package:uni/pages/authentication/sign_up.dart';
import 'package:uni/pages/home/home_page.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // final user = Provider.of<User>(context);
    // print(user);

    // if (user == null) {
    //   return SignUp(); 
    // } 
    // else {
      return HomePage();
      // }
  }
}