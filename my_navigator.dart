import 'package:flutter/material.dart';
import 'package:hoohacks2020/MainPage.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }
  static void start(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
  }
}