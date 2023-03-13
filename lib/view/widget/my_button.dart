import 'package:flutter/material.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/sizes_in_app.dart';

class MyButton extends StatelessWidget {
  MyButton({
    required this.title,
    this.onPressed,
    super.key,
    this.isBorder = false,
    this.textColorIsWhite = true
  });

  void Function()? onPressed;
bool isBorder ;
  String title;
  bool textColorIsWhite ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color(AppColor.primaryButtonColor),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side:isBorder == false ? BorderSide.none :const BorderSide(
            color: Color(AppColor.borderColor),
            width: 1
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: Text(
          title,
          style:  TextStyle(
            fontSize: AppSizes.sizeTextMedium,
            color: textColorIsWhite == true ?const Color(AppColor.whiteTextButtonColor) :  const Color(AppColor.primaryTextColor),
          ),
        ),
      ),
    );
  }
}
