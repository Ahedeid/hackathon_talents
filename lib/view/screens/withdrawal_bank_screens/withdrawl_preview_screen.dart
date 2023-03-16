import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/constant/strings_in_app.dart';
import 'package:hackathon_talents/utils/helper.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';
import '../../../utils/constant/colors_manger.dart';
import '../../../utils/constant/sizes_in_app.dart';
import '../../widget/bottom_sheet_pending.dart';
import '../../widget/sheared_appbar.dart';


class WithdrawlPrevviewScreen extends StatelessWidget {
  const WithdrawlPrevviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Withdrawal Preview', isBack: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              const Center(
                child:  Text(
                  'Amount',
                  style: TextStyle(
                      fontSize: 16,

                      fontWeight: FontWeight.bold,
                      color: Color(AppColor.gray)),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '300.00 USD',
                  style: TextStyle(
                      fontSize: 25,

                      fontWeight: FontWeight.bold,
                      color: Color(AppColor.mainBlue)),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Transfered to:",
                    style: TextStyle(
                        color: Color(
                          AppColor.textAboveFieldColor,
                        ),
                        fontSize: 16),
                  ),
                  Container()
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 93,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(IconsConstant.bank),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Safa Mousa",
                              style: TextStyle(
                                fontSize: AppSizes.textDefaultSize,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "[Bank Of Palestine]",
                              style: TextStyle(color: Color(AppColor.gray)),
                            )
                          ],
                        ),
                        const Text(
                          "0452-1064559-001-3100-000",
                          style: TextStyle(
                              color: Color(AppColor.gray),
                              fontSize: AppSizes.textTiny),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 128,
                width: 350,
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text("Transfer amount"), Text("\$300 ")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text("Fee"), Text("Free ")],
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text("You'll get"), Text("\$300 ")],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: Text("- Estimated arrival: 2 business days."),
                    ),
                    ...List.generate(
                        AppStrings.transferPreviewInstructions.length,
                            (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: Text(AppStrings
                              .transferPreviewInstructions[index]),
                        )),
                  ]),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                title: "Confirm",
                onPressed: () {
                  AppRouter.goToAndRemove(screenName: ScreenName.balanceScreen);
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
                    builder: (context) => const ContentSheetPending(),
                  );
                  UtilsConfig.showSnackBarMessage(
                      message:
                      "Wait for the payment to be ready within 24 hours.",
                      status: true);
                },
                isBorder: true,
                textColorIsWhite: false,
                textColor: AppColor.backGroundTextFieldColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}