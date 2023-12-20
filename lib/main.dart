import 'package:ecommerce_app/provider/login_provider.dart';
import 'package:ecommerce_app/views/signin.dart';
import 'package:ecommerce_app/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => signin(),
          'signup': (context) => signup(),
          'reset': (context) => reset(),
        },
      ),
    ),
  );
}
