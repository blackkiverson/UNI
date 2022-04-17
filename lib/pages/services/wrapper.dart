// ignore_for_file: avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uni/models/user.dart';
import 'package:uni/pages/authenticate/sign_up.dart';
import 'package:uni/pages/home/home_page.dart';

// ignore: use_key_in_widget_constructors
class Wrapper extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<AuthUser>(context);
    print(user);

    if (user == null) {
      return SignUp();
    }
    else {
      return HomePage();
    }
  }
}