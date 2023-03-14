import 'package:flutter/material.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';
import 'package:hackathon_talents/view/widget/sheared_appbar.dart';

class CashScreen extends StatelessWidget {
  const CashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: "Cash",
        isBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Office',
                  style: TextStyle(
                      color: Color(
                        AppColor.textAboveFieldColor,
                      ),
                      fontSize: AppSizes.textMedium),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(AppColor.backGroundTextFieldColor),
                      border: Border.all(
                          width: .5,
                          color: const Color(AppColor.borderColorUnSelected)),
                      borderRadius: BorderRadius.circular(7)),
                  height: 70,
                  width: 330,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "ساعات العمل: 9 صباحا -7مساءٌ",
                              style: TextStyle(
                                  fontSize: 9, color: Color(AppColor.grey)),
                            ),
                            Text(
                              "بدون عمولة",
                              style: TextStyle(
                                  fontSize: 9, color: Color(AppColor.grey)),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "غزة - مكتب الدانا",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(AppColor.primaryTextColor)),
                            ),
                            Text(
                              "الرمال _ تقاطع شارع فلسطين مع الشهداء",
                              style: TextStyle(
                                  fontSize: 11, color: Color(AppColor.grey)),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_downward, color: Colors.grey)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text(
                      'Recepient',
                      style: TextStyle(
                          color: Color(
                            AppColor.textAboveFieldColor,
                          ),
                          fontSize: AppSizes.textMedium),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 12, color: Color(AppColor.mainBlue)),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(AppColor.backGroundTextFieldColor),
                      border: Border.all(
                          width: .5,
                          color: const Color(AppColor.borderColorUnSelected)),
                      borderRadius: BorderRadius.circular(7)),
                  height: 70,
                  width: 330,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 16),
                    child: Row(
                      children: const [
                        Text(
                          "Select a recepient",
                          style: TextStyle(
                              color: Color(AppColor.grey), fontSize: 14),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_downward, color: Colors.grey)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "+  Add recipient",
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    )
                  ],
                )
              ],
            ),
            Spacer(),
            MyButton(
              title: "Continue",
              onPressed: () {},
              textColorIsWhite: false,
            )
          ],
        ),
      ),
    );
  }
}
