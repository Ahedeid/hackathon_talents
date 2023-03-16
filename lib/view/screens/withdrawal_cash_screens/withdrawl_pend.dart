import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon_talents/utils/constant/colors_manger.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/utils/constant/strings_in_app.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';
import 'package:hackathon_talents/view/widget/sheared_appbar.dart';


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
                          child: const Text(
                            "\$300",
                            style: TextStyle(fontSize: AppSizes.textLarge,fontWeight: FontWeight.w700),
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
                              style:
                              TextStyle(color: Color(AppColor.pendColor),fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Color(AppColor.gray),
                      height: 1,
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
                          Spacer(),
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
                height: 40,
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
                                style: const TextStyle(
                                    fontSize: 13),
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