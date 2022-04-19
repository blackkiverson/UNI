// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:uni/pages/services/auth.dart';
import 'log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();

  final _formkey = GlobalKey<FormState>();
  bool isPasswordVisible = false;

  String fullname = '';
  String college = '';
  String email = '';
  String password = '';
  String confirmpassword = '';
  String error = '';

  late final TextEditingController _fullname;
  late final TextEditingController _college;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmpassword;

  @override
  void initState() {
    _fullname = TextEditingController();
    _college = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmpassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _fullname.dispose();
    _college.dispose();
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
                        child: TextField(
                          onChanged: (value) {
                            setState(() => fullname = value);
                          },
                          controller: _fullname,
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
                        child: TextField(
                          onChanged: (value) {
                            setState(() => college = value);
                          },
                          controller: _college,
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
                          //validate the email to college email

                          onChanged: (value) {
                            setState(() => email = value);
                          },
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
                            hintText: "college e-mail",
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
                          // validate: (value) => value.length < 6 ? null,
                          onChanged: (value) {
                            setState(() => password = value);
                          },
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
                          onChanged: (value) {
                            setState(() => confirmpassword = value);
                          },
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
                          if (_formkey.currentState!.validate()) {
                            if (_password.text == _confirmpassword.text) {
                              dynamic result =
                                  await _auth.registerWithEmailAndPassword(
                                      email, password, fullname);
                              if (result == null) {
                                setState(() =>
                                    error = 'Please supply a valid email');
                              }
                            }
                          }
                        },
                        child: const Text("SIGN UP",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 12),
                      Text(error, style: TextStyle(color: Colors.red)),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogIn(),
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
