import 'package:flutter/material.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import '../../utils/constant/colors_manger.dart';
import 'my_textFeild.dart';

class TextAndField extends StatelessWidget {
  TextAndField({this.isIcon = false, required this.title,this.controller, Key? key})
      : super(key: key);
  bool isIcon;
  TextEditingController? controller;
  String title;

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
        MyTextField(
          controller: controller,
          keyboardType: TextInputType.text,
          isIcon: isIcon,
        )
      ],
    );
  }
}
