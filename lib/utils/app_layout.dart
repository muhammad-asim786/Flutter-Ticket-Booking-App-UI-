import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getsize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getscreenheight() {
    return Get.height;
  }

  static getscreenweight() {
    return Get.width;
  }

  static getHeight(double pixel) {
    double x = getscreenheight() / pixel;
    return getscreenheight() / x;
  }

  static getWidth(double pixel) {
    double x = getscreenweight()() / pixel;
    return getscreenweight()() / x;
  }
}
