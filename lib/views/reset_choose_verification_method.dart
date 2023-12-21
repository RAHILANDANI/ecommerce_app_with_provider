import 'package:ecommerce_app/utils/color.dart';
import 'package:flutter/material.dart';

class resetverification extends StatefulWidget {
  const resetverification({super.key});

  @override
  State<resetverification> createState() => _resetverificationState();
}

class _resetverificationState extends State<resetverification> {
  @override
  Widget build(BuildContext context) {
    String username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.phone_android,
              size: 70,
              color: Global.color,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Text("The verification code has been sent via SMS to"),
          ),
          Center(
            child: Text(username),
          ),
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: TextFormField(),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: TextFormField(),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: TextFormField(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Global.color,
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Verify"),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't receive the code?"),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Resend",
                  style: TextStyle(
                    color: Global.color,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
