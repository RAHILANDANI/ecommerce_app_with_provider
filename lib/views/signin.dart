import 'package:ecommerce_app/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    var login = Provider.of<LoginProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              Text(
                "sign in",
                style: TextStyle(
                    color: Color(0xff10B01C), fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Email/Phone Number",
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
              SizedBox(
                height: 12,
              ),
              if (login.loginModel.islogin == true)
                TextFormField(
                  cursorColor: Color(0xff10B01C),
                  decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff10B01C),
                      ),
                    ),
                  ),
                ),
              if (login.loginModel.islogin == true)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'signup');
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xff10B01C),
                        ),
                      ),
                    )
                  ],
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
                      onPressed: () {
                        Provider.of<LoginProvider>(context, listen: false)
                            .login();
                      },
                      child: (login.loginModel.islogin == false)
                          ? Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "or sign in with",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/google.png"),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/facebook.png"),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/twitter.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("No account yet?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create one",
                      style: TextStyle(
                        color: Color(0xff10B01C),
                      ),
                    ),
                  )
                ],
              ),
              if (login.loginModel.islogin == true)
                Center(
                  child: TextButton(
                    onPressed: () {
                      Provider.of<LoginProvider>(context, listen: false)
                          .notlogin();
                    },
                    child: Text(
                      "< Back",
                      style: TextStyle(
                        color: Color(0xff10B01C),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
