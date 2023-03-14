import 'package:flutter/material.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/sizes_in_app.dart';

class TextAndEmptyField extends StatelessWidget {
  TextAndEmptyField({this.onTap, required this.title, Key? key})
      : super(key: key);
  String title;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(AppColor.textAboveFieldColor),
            fontSize: AppSizes.textDefaultSize,
          ),
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(AppColor.backGroundTextFieldColor),
              border: Border.all(
                color: const Color(AppColor.borderColor),
              ),
            ),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
