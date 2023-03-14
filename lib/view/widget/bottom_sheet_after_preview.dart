import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/icons_constant.dart';
import '../../utils/constant/sizes_in_app.dart';

class BottomSheetPreview extends StatelessWidget {
  const BottomSheetPreview({super.key});

  @override
  Widget build(BuildContext context) {
    var midea = MediaQuery.of(context).size;
    return SizedBox(
      height: midea.height * 0.28,
      child: Padding(
        padding: EdgeInsets.only(
            left: 25,
            right: 24,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(IconsConstant.wallClock),
                    Column(
                      children: const [
                        Text(
                          "Pending",
                          style: TextStyle(color: Color(AppColor.pendColor)),
                        ),
                        Text(
                          "Estimate: 24 Hours",
                          style: TextStyle(fontSize: AppSizes.textVeryTiny),
                        ),
                      ],
                    ),
                  ],
                ),
                const Text(
                  "8 June 2022",
                  style: TextStyle(fontSize: AppSizes.textVeryTiny),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text("Safa Mousa"),
                    Text(" [Bank of Palestine]"),
                    Text(
                      "\$300",
                    )
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "0452 103366 001 3000 000",
                      style: TextStyle(
                          fontSize: AppSizes.textTiny,
                          color: Color(AppColor.grey)),
                    ),
                    Text("No Fees",
                        style: TextStyle(
                            fontSize: AppSizes.textTiny,
                            color: Color(AppColor.grey)))
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                    textColor: AppColor.mainBlue,
                    onPressed: () {},
                    height: 40,
                    width: 160,
                    title: "Show More"),
                MyButton(
                    textColor: AppColor.primaryTextColor,
                    onPressed: () {},
                    height: 40,
                    width: 160,
                    title: "Done")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
