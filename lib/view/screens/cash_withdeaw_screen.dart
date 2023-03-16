import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/sizes_in_app.dart';
import '../widget/bottom_sheet_ofess.dart';
import '../widget/bottom_sheet_recipients.dart';
import '../widget/sheared_appbar.dart';

class CashWithDrawScreen extends StatelessWidget {
  const CashWithDrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Cash', isBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Office',
              style: TextStyle(
                  fontSize: AppSizes.textLarge, color: Color(AppColor.gray)),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      borderSide: BorderSide.none),
                  backgroundColor: Colors.white,
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const ContentOfBottomSheetOffse(),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 13, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: const Color(AppColor.backGroundTextFieldColor),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'ساعات العمل: 9 صباحا -7مساءا',
                          style: TextStyle(
                            fontSize: AppSizes.textVeryTiny,
                            color: Color(AppColor.gray),
                          ),
                        ),
                        Text(
                          'بدون عمولة',
                          style: TextStyle(
                            fontSize: AppSizes.textTiny,
                            color: Color(AppColor.gray),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'غزة - مكتب الدانا',
                          style: TextStyle(
                            fontSize: AppSizes.textSemiLarge,
                            color: Color(AppColor.primaryTextColor),
                          ),
                        ),
                        Text(
                          'الرمال _ تقاطع شارع فلسطين مع الشهداء',
                          style: TextStyle(
                            fontSize: AppSizes.textTiny,
                            color: Color(AppColor.gray),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(AppColor.gray),
                          size: 20,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Text(
                  'Recipient',
                  style: TextStyle(
                      fontSize: AppSizes.textLarge,
                      color: Color(AppColor.gray)),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                        //fontSize: AppSizes.textTiny,
                        color: Color(AppColor.primaryButtonColor)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                tileColor: const Color(AppColor.backGroundTextFieldColor),
                onTap: () {
                  showModalBottomSheet(
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        borderSide: BorderSide.none),
                    backgroundColor: Colors.white,
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => const ContentSheetRecipients(),
                  );
                },
                leading: const Text(
                  'Select a recipient',
                  style: TextStyle(
                      color: Color(AppColor.gray),
                      fontSize: AppSizes.textSemiLarge),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(''),
                TextButton(
                  onPressed: () {
                    AppRouter.goTo(screenName: ScreenName.addRecipentsScreen);
                  },
                  child: const Text(
                    '+ Add recipient',
                    style: TextStyle(
                      color: Color(AppColor.primaryButtonColor),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            MyButton(
              title: 'Continue',
              onPressed: () {
                AppRouter.goTo(screenName: ScreenName.withdrawalPreviewScreen);
              },
              textColorIsWhite: false,
            ),
          ],
        ),
      ),
    );
  }
}
