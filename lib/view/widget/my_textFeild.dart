// ignore_for_file: unnecessary_cast

import 'package:flutter/material.dart';
import '../../utils/constant/colors_manger.dart';




class MyTextField extends StatelessWidget {
  MyTextField({
    //required this.hintText,
     this.obscureText = false,
    required this.keyboardType,
    this.bottomMargin = 0,
    this.prefixIcon,
    this.onChange,
    //this.onSaved,
    this.width = double.infinity,
    this.vertical = 18,
    this.validator,
     this.controller,
    required this.isIcon,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.maxLines = 1,
    Key? key,
  }) : super(key: key);
int maxLines ;
 // final String hintText;
  final bool obscureText;
  double bottomMargin;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  Function? onChange;
  TextEditingController? controller;
  AutovalidateMode? autovalidateMode;
  Widget? prefixIcon;
  double width;
  double vertical;
  bool isIcon;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
     // readOnly: true,
      //enableInteractiveSelection: true,
      maxLines:maxLines ,
      minLines: 1,
      style: const TextStyle(color: Color(AppColor.primaryTextColor)),
      onChanged: onChange as Function(String?)?,
      //   onSaved: onSaved as Function(String?)?,
        controller: controller,
      validator: validator as String? Function(String?)?,
      keyboardType: keyboardType,
      autovalidateMode: autovalidateMode,
      obscureText: obscureText,
      decoration: InputDecoration(
      //  hintText: hintText,
        errorStyle: const TextStyle(fontSize: 12, height: 0.3),
        hintStyle: const TextStyle(color: Color(AppColor.grey)),
        filled: true,
        fillColor: const Color(AppColor.backGroundTextFieldColor),
        contentPadding:
            EdgeInsets.symmetric(horizontal: 34, vertical: vertical),
        suffixIcon: isIcon== false ? Container() :const Icon(Icons.arrow_forward_ios),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color(AppColor.borderColor),
            )
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(AppColor.borderColor)),
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(AppColor.borderColor)),
        ),
      ),
      //autofocus: true ,
    );
  }
}