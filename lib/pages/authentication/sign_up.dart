// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uni/pages/authentication/log_in.dart';
import 'package:uni/pages/home/main_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  // final Function toggleView;
  // SignUp({this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formkey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  // final main _auth = AuthService();

  String email = '';
  String password = '';

  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmpassword;

   

  @override
  void initState(){
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmpassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    _email.dispose();
    _password.dispose();
    _confirmpassword.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/wp-five.jpg"),
                // repeat: ImageRepeat.repeatX //Used to repeat
                // the image on the x-axis until filled.
                fit: BoxFit.cover),
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
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 30),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Full Name",
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
                        child: const TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            prefixIcon: Icon(Icons.person),
                            hintText: "Bella Davies",
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
                        "University/College",
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
                        child: const TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            prefixIcon: Icon(Icons.school),
                            hintText: "American Unversity of Nigeria",
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

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Re-enter Password",
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
                          controller: _confirmpassword,
                          obscureText: isPasswordVisible ? false : true,
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14),
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: "Re-enter Password",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          try {
                            final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: email,
                              password: password,
                            );
                            print(credential);
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print('The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: const Text("SIGN UP",
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
                          builder: (context) => 
                            const LogIn(),
                        ),
                      );
                    },
                    child: const Text(
                      "I already have an account",
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
