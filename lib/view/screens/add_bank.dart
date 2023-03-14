import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/utils/helper.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';

import '../widget/sheared_appbar.dart';

class AddBankScreen extends StatelessWidget {
  const AddBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShearedAppBar(title: 'Bank Withdraw', isBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.paddingHorizontal,
            vertical: AppSizes.paddingVertival),
        child: ListView(
          // shrinkWrap: true,
          children: [
            DottedBorder(
              color: const Color(AppColor.borderColorUnSelected),
              strokeWidth: 2,
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                minVerticalPadding: 30,
                tileColor: const Color(AppColor.whiteTextButtonColor),
                onTap: () {
                  AppRouter.goTo(screenName: ScreenName.addBankAccount);
                },
                leading: CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color(AppColor.scaffoldBack),
                  child: SvgPicture.asset(
                    IconsConstant.bank,
                    height: 35,
                  ),
                ),
                title: const Text(
                  'Add Bank Account',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Segoe UI',
                    color: Color(
                      AppColor.addBankAccount,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyButton(
                title: 'Continue',
                onPressed: () {
                  UtilsConfig.showSnackBarMessage(
                      message: 'Please select a bank account.', status: false);
                },
                textColorIsWhite: false),
            const SizedBox(
              height: 10,
            ),
            MyButton(
                title: 'Add Account',
                onPressed: () {
                  AppRouter.goTo(screenName: ScreenName.addBankAccount);
                },
                textColor: AppColor.primaryTextColor),
          ],
        ),
      ),
    );
  }
}
