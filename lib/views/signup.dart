import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "AR Shop",
                style: TextStyle(color: Color(0xff10B01C), fontSize: 50),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Email",
              style: TextStyle(color: Colors.black54),
            ),
            TextFormField(
              cursorColor: Color(0xff10B01C),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff10B01C),
                  ),
                ),
              ),
            ),
            Text(
                "We will send the notification to reset your password through the email"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xff10B01C),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Reset Password",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/');
                  Navigator.pop(context);
                },
                child: Text(
                  "<- Back to login",
                  style: TextStyle(
                    color: Color(0xff10B01C),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
