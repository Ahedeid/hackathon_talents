import 'package:flutter/material.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "ساعات العمل: 9 صباحا -7مساءا",
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
                                  fontSize: 9, color: Color(AppColor.grey)),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_downward)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
