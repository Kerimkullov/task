import 'package:flutter/material.dart';

class TaskColors {
  static final Color main = Color(0xffF90640);
  static final Color background = Color(0xffE5E5E5);
  static final Color background2 = Color(0xffF9F8FF);
  static final LinearGradient mainGradient = LinearGradient(colors: [
    Color(0xffF90640),
    Color(0xffA027FF),
  ], begin: Alignment.topCenter, end: Alignment.center);

  static final Color mainGradient1 = Color(0xffF90640);
  static final Color mainGradient2 = Color(0xffA027FF);
  static final LinearGradient profileGradient = LinearGradient(
      colors: [Color(0xff7509FF), Color(0xffD96DFF)],
      begin: Alignment.topCenter,
      end: Alignment.center);
  static final Color profileGradient1 = Color(0xff7509FF);
  static final Color profileTextColor = Color(0xffA98CE1);
}
