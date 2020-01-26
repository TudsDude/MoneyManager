import 'package:flutter/material.dart';

class Navi {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/Home");
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/IntroPage");
  }
}