import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Almarai',
        primaryColor: kPrimaryColor,
      ),
      home:  const HomePage(),
    );
  }
}

