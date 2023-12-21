import 'package:ecommerce_app/provider/login_provider.dart';
import 'package:ecommerce_app/views/reset_choose_verification_method.dart';
import 'package:ecommerce_app/views/signin.dart';
import 'package:ecommerce_app/views/reset.dart';
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
          'reset': (context) => reset(),
          'resetverification': (context) => resetverification(),
        },
      ),
    ),
  );
}
