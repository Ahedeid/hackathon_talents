
import 'package:flutter/material.dart';
import 'package:hackathon_talents/logics/models/screen_arguments_ottp.dart';


class AppRouter{
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  static goToAndRemove({required String screenName}){
    navigatorKey.currentState!.pushReplacementNamed(screenName);
  }

  static goTo({required String screenName}){
    navigatorKey.currentState!.pushNamed(screenName);
  }

  static back() {
    navigatorKey.currentState!.pop();
  }

  static mayBack() {
    navigatorKey.currentState!.maybePop();
  }

  static removeAllBack({required String screenName}) {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(screenName,(Route<dynamic> route) => false);
  }

}