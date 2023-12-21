import 'package:ecommerce_app/utils/color.dart';
import 'package:flutter/material.dart';

class reset extends StatefulWidget {
  const reset({super.key});

  @override
  State<reset> createState() => _resetState();
}

class _resetState extends State<reset> {
  @override
  Widget build(BuildContext context) {
    String username = "";
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
                style: TextStyle(color: Global.color, fontSize: 50),
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
              cursorColor: Global.color,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Global.color,
                  ),
                ),
              ),
              onChanged: (val) {
                username = val;
              },
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
                        Global.color,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, 'resetverification',
                          arguments: username);
                    },
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
                  Navigator.pop(context);
                },
                child: Text(
                  "<- Back to login",
                  style: TextStyle(
                    color: Global.color,
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
