import 'package:flutter/material.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';

class AppTextStyles {
  static TextStyle deafultText = const TextStyle(
      fontFamily: "Segoe UI",
      color: Color(AppColor.primaryTextColor),
      fontWeight: FontWeight.normal,
      fontSize: AppSizes.textDefaultSize);
  static TextStyle title = const TextStyle(
      fontFamily: "Segoe UI",
      color: Color(AppColor.primaryTextColor),
      fontWeight: FontWeight.bold,
      fontSize: AppSizes.textDefaultSize
  );
  static TextStyle bodyText1 = const TextStyle(
      fontFamily: "Segoe UI",
      color: Color(AppColor.gray),
      fontWeight: FontWeight.normal,
      fontSize: AppSizes.textSmall);
  static TextStyle appBarText = const TextStyle(
      fontFamily: "Segoe UI",
      color: Color(AppColor.primaryTextColor),
      fontWeight: FontWeight.w600,
      fontSize: AppSizes.textLarge);
  static TextStyle buttonStyle = const TextStyle(
      fontFamily: "Segoe UI",
      color: Color(AppColor.whiteTextButtonColor),
      fontWeight: FontWeight.w600,
      fontSize: AppSizes.textLarge);
  static TextStyle textAboveField = const TextStyle(
      fontFamily: "Segoe UI",
      color: Color(AppColor.textAboveFieldColor),
      fontWeight: FontWeight.normal,
      fontSize: AppSizes.textSmall);
  static TextStyle bottomSheetContent = const TextStyle(
      fontFamily: "Segoe UI",
      color: Color(AppColor.primaryTextColor),
      fontWeight: FontWeight.normal,
      fontSize: AppSizes.textDefaultSize);
}