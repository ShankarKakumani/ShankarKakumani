import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ScreenUtils {
  static double statusBarHeight(BuildContext context) {
    return View.of(context).padding.top / devicePixelRatio(context);
  }

  static double navigationBarHeight(BuildContext context) {
    return View.of(context).padding.bottom / devicePixelRatio(context);
  }

  static double devicePixelRatio(BuildContext context) {
    return View.of(context).devicePixelRatio;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobileWeb(BuildContext context) => screenWidth(context) < 450;

  static bool isTabletWeb(BuildContext context) =>
      screenWidth(context) < 1280 && screenWidth(context) >= 450;

  static bool isDesktopWeb(BuildContext context) =>
      screenWidth(context) >= 1280;

  static double ratioWidth(BuildContext context, ratio) {
    return screenWidth(context) / ratio;
  }

  static double ratioHeight(BuildContext context, ratio) {
    return screenHeight(context) / ratio;
  }

  static double getTextScaleFactor(BuildContext context) {
    var ratio = (ScreenUtils.screenWidth(context) / 375);
    final mediaQueryData = MediaQuery.of(context);
    var rr = ratio > 1 ? 1.0 : (ratio * 0.98);
    final scale = mediaQueryData.textScaleFactor.clamp(rr, rr);
    return scale;
  }

  static void setStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ));
  }

  static void setSystemUIOverlayStyle(
    SystemUiOverlayStyle systemUiOverlayStyle,
  ) {
    if (GetPlatform.isIOS) {
      var style = SystemUiOverlayStyle.dark;
      if (systemUiOverlayStyle.statusBarBrightness == Brightness.light) {
        style = SystemUiOverlayStyle.light;
      }
      SystemChrome.setSystemUIOverlayStyle(style);
      return;
    }
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

}
