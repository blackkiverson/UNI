import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uni/pages/services/auth.dart';
import 'package:uni/pages/services/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return StreamProvider.value(value: AuthService().user,child:MaterialApp(...))
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamProvider<AuthUser?>.value(
        value: AuthService().user,
        initialData: null,
        child: Wrapper(),
      ),
    );
  }
}
