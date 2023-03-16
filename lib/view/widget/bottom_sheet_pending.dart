import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';

import '../../utils/constant/colors_manger.dart';

class ContentSheetPending extends StatelessWidget {
  const ContentSheetPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var midea = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: midea.width*0.3) ,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: const Color(AppColor.gray),
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            minVerticalPadding: 18,
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: SvgPicture.asset(
              IconsConstant.wallClock,
              width: 30,
              height: 30,
            ),
            title: const Text(
              'Pending',
              style: TextStyle(
                fontSize: AppSizes.textSemiLarge,
                fontWeight: FontWeight.w600,
                color: Color(AppColor.pendColor),
              ),
            ),
            subtitle: const Text(
              'Estimate.: 24 Hours',
              style: TextStyle(
                fontSize: AppSizes.textTiny,
                color: Color(AppColor.gray),
              ),
            ),
            trailing: const Text(
              '8 June 2022',
              style: TextStyle(
                fontSize: AppSizes.textTiny,
                color: Color(AppColor.gray),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'محمد خلف',
            style: TextStyle(
              fontSize: AppSizes.textSemiLarge,
              fontWeight: FontWeight.bold,
              color: Color(AppColor.primaryTextColor),
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'غزة - مكتب الدانا',
                  style: TextStyle(
                    fontSize: AppSizes.textSemiLarge,
                    color: Color(AppColor.primaryTextColor),
                  ),
                ),
                Text(
                  'الرمال - مفترق شارع فلسطين مع الشهدا',
                  style: TextStyle(
                    fontSize: AppSizes.textTiny,
                    color: Color(AppColor.gray),
                  ),
                )
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  '\$300',
                  style: TextStyle(
                    fontSize: AppSizes.textSemiLarge,
                    color: Color(AppColor.primaryTextColor),
                  ),
                ),
                Text(
                  'No Fees',
                  style: TextStyle(
                    fontSize: AppSizes.textTiny,
                    color: Color(AppColor.gray),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                isBorder: true,
                title: 'Done',
                textColor: AppColor.primaryButtonColor,
                textColorIsWhite: true,
                onPressed: () {
                  AppRouter.goTo(screenName: ScreenName.withdrawalBankScreen);
                },
                width: 160,
              ),
              MyButton(
                isBorder: true,
                title: 'Show more',
                textColor: AppColor.primaryButtonColor,
                textColorIsWhite: true,
                onPressed: () {},
                width: 160,
              ),
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
