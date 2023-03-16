import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';
import 'package:hackathon_talents/view/widget/sheared_appbar.dart';

class WithdrawalCompletedBank extends StatelessWidget {
  const WithdrawalCompletedBank({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 130,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            children: const [
                              Text(
                                "Amount",
                                style: TextStyle(color: Color(AppColor.gray)),
                              ),
                              Text(
                                "\$300",
                                style: TextStyle(fontSize: AppSizes.textLarge),
                              )
                            ],
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
                              "Completed",
                              style: TextStyle(
                                  color: Color(AppColor.primaryTextColor),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Color(AppColor.gray),
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Safa Mousa\t",
                                  style: TextStyle(),
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
                        ),
                        SvgPicture.asset(
                          IconsConstant.bank,
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
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
              const SizedBox(
                height: 16,
              ),
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
                        Text("Bank Account Name",
                            style: TextStyle(
                                fontSize: 13, color: Color(AppColor.gray))),
                        Spacer(),
                        Text("Safa K Mousa",
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
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                    color: const Color(AppColor.backGroundTextFieldColor),
                    border: Border.all(
                        width: .5,
                        color: const Color(AppColor.borderColorUnSelected)),
                    borderRadius: BorderRadius.circular(7)),
                height: 75,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transfer Screenshot',
                      style: TextStyle(
                          fontSize: AppSizes.textDefaultSize,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Sent by",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Omar Ziara",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: MyButton(
                  title: "Report a Problem ",
                  onPressed: () {},
                  width: 350,
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