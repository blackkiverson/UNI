// ignore_for_file: avoid_print, unused_local_variable, unused_field

import 'package:flutter/material.dart';
import 'package:uni/pages/authenticate/emailverification_page.dart';
import 'package:uni/pages/authenticate/sign_up.dart';
import 'package:uni/pages/home/main_page.dart';
import 'package:uni/pages/services/auth.dart';

import '../../widgets/loading_screen.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formkey = GlobalKey();
  bool isPasswordVisible = false;
  bool loading = false;

  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future signIn() async {
    final user =
        await AuthService().signInWithEmailAndPassword(email, password);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return 
    loading ? LoadingScreen() : 
    Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/wp-six.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 150),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black87,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ],
                        ),
                        height: 50,
                        width: 350,
                        child: TextField(
                          onChanged: ((value) {
                            setState(() => email = value);
                          }),
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            prefixIcon: Icon(
                              Icons.email,
                              // color: Colors.blueGrey,
                            ),
                            hintText: "xxxx@mail.com",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black87,
                                blurRadius: 6,
                                offset: Offset(0, 2)),
                          ],
                        ),
                        height: 50,
                        width: 350,
                        child: TextField(
                          onChanged: ((value) {
                            setState(() => password = value);
                          }),
                          controller: _password,
                          obscureText: isPasswordVisible ? false : true,
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EmailVerification()));
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),

                  const SizedBox(height: 150),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          await signIn().then(
                            (user) => {
                              if (user?.uid != null)
                                {
                                  setState(() => loading = true),
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const MainPage()))
                                }
                              else
                                {
                                  setState(() => loading = false),
                                  print("User does not exist"),
                                }
                            },
                          );
                        },
                        child: const Text("LOG IN",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      "Create an account",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
