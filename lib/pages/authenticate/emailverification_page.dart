import 'package:flutter/material.dart';
import 'package:uni/pages/authenticate/sign_up.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 12, 12, 12),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 280),
            child: Icon(Icons.lock, color: Colors.blue, size: 100),
          ),
          SizedBox(height: 20),
          Text(
            "Email Verification",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 20),
          Text(
            "We already sent a link verification to your email, please verify your email. If not your email go back to the SIgnUp page.",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 190, 190, 190),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const SignUp()));
              },
              child: Text("Back to SignUp", style: TextStyle(color: Color.fromARGB(255, 9, 9, 9))))
        ],
      ),
    );
  }
}
