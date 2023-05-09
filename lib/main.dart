import 'dart:math';

import 'package:bouquetproject/cart.dart';
import 'package:bouquetproject/home.dart';
import 'package:bouquetproject/login.dart';
import 'package:bouquetproject/signup.dart';
import 'package:flutter/material.dart';
var logged = false;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home :Home(),
    );
  }
}


