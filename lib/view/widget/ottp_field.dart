import 'package:flutter/material.dart';

import '../../utils/constant/colors_manger.dart';

class OTTPFeild extends StatelessWidget {
  const OTTPFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color(AppColor.backGroundTextFieldColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Color(AppColor.primaryTextColor), fontSize: 28),
        decoration: InputDecoration(
           contentPadding:
               const EdgeInsets.symmetric(vertical: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(width: 1, color: Color(AppColor.borderColor)),
          ),
        ),
        // obscureText: true,
        // obscuringCharacter: '*',
      ),
    );
  }
}
