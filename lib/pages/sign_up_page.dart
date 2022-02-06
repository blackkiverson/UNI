import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/wp-five.jpg"),
              // repeat: ImageRepeat.repeatX //Used to repeat
              // the image on the x-axis until filled.
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 10),
            const Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 30),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "First Name",
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
                  ),
                  height: 50,
                  width: 350,
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Surname",
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
                  ),
                  height: 50,
                  width: 350,
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
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.black87,
                      ),
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
                    
                  ),
                  height: 50,
                  width: 350,
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
                  ),
                  height: 50,
                  width: 350,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
