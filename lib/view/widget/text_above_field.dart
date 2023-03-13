
import 'package:flutter/material.dart';

import '../../utils/constant/colors_manger.dart';
import 'my_textFeild.dart';



class TextAndField extends StatelessWidget {
   TextAndField({
    this.isIcon = false ,
    required this.title,

    Key? key}) : super(key: key);
  bool isIcon ;
  String title ;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Text(title,style: const TextStyle(color: Color(AppColor.textAboveField)),),
        const SizedBox(height: 5),
        MyTextField(obscureText: false, keyboardType: TextInputType.text, isIcon: isIcon,)
      ],
    );
  }
}
