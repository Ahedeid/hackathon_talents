import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/utils/constant/strings_in_app.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';
import 'package:hackathon_talents/view/widget/sheared_appbar.dart';

import '../../../routes/app_router.dart';
import '../../../utils/helper.dart';

class WithdrawalCashPend extends StatelessWidget {
  const WithdrawalCashPend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: "Withdrawal",
        isNotification: true,
        isBack: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          child: const Text(
                            "\$300",
                            style: TextStyle(
                                fontSize: AppSizes.textLarge,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 3),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color(AppColor.borderContainer)),
                                color:
                                    const Color(AppColor.backGroundContainer),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              "Pending",
                              style: TextStyle(
                                  color: Color(AppColor.pendColor),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Color(AppColor.gray),
                      height: 1,
                      indent: 18,
                      endIndent: 17,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "مكتب الدانا - غزة",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            IconsConstant.money,
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              Container(
                padding: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 100,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Timeline',
                      style: TextStyle(fontSize: AppSizes.textDefaultSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: const [
                            Text("7:30 am",
                                style: TextStyle(
                                    fontSize: AppSizes.textTiny,
                                    color: Color(0xff656565))),
                            Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: AppSizes.textVeryTiny,
                                  color: Color(AppColor.gray)),
                            )
                          ],
                        ),
                        const SizedBox(width: 24),
                        const CircleAvatar(
                            radius: 8,
                            backgroundColor: Color(AppColor.mainBlue)),
                        const SizedBox(width: 24),
                        const Text(
                          "Requested",
                          style: TextStyle(fontSize: AppSizes.textTiny),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 120,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Details',
                      style: TextStyle(fontSize: AppSizes.textDefaultSize),
                    ),
                    Row(
                      children: const [
                        Text("Office Name",
                            style: TextStyle(
                                fontSize: 13, color: Color(AppColor.gray))),
                        Spacer(),
                        Text("مكتب الدانا - غزة",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(AppColor.primaryTextColor))),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Expected Date",
                            style: TextStyle(
                                fontSize: 13, color: Color(AppColor.gray))),
                        Spacer(),
                        Text("Within 24 Hours (Avg: 2hrs)",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(AppColor.primaryTextColor))),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 210,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Instructions',
                      style: TextStyle(fontSize: AppSizes.textDefaultSize),
                    ),
                    ...List.generate(
                        AppStrings.withdrawlCashInstructions.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 7,
                                    width: 7,
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                  Text(
                                    AppStrings.withdrawlCashInstructions[index],
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ))
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: MyButton(
                  title: "Cancel Withdrawal",
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(15)),
                          actionsAlignment:
                          MainAxisAlignment.center,
                          icon: Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                AppRouter.back();
                              },
                              child: const Icon(
                                Icons.close,
                                size: 20,
                              ),
                            ),
                          ),
                          iconPadding:
                          const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10),
                          contentPadding:
                          const EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 20),
                          content: const Text(
                            'Are you sure you want to delete your bank account?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(
                                  AppColor.primaryTextColor),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                style:
                                ElevatedButton.styleFrom(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      horizontal: 40),
                                  backgroundColor:
                                  const Color(AppColor
                                      .whiteTextButtonColor),
                                  shape:
                                  RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Color(AppColor
                                          .borderColor),
                                    ),
                                    borderRadius:
                                    BorderRadius.circular(
                                        7),
                                  ),
                                ),
                                onPressed: () =>
                                    Navigator.pop(
                                        context, false),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Color(AppColor
                                          .primaryTextColor)),
                                )),
                            ElevatedButton(
                              onPressed: () {
                                AppRouter.goToAndRemove(screenName: ScreenName.withdrawalSentBankScreen);
                                UtilsConfig.showSnackBarMessage(
                                    message:
                                    'Bank account has been deleted.',
                                    status: true);
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      horizontal: 40),
                                  backgroundColor:
                                  const Color(
                                      AppColor.redDelete),
                                  shape:
                                  RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(
                                        7),
                                  )),
                              child: const Text('Delete'),
                            ),
                          ],
                        ));
                  },
                  height: 45,
                  textColor: AppColor.primaryTextColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
