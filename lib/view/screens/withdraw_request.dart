import 'package:flutter/material.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/sizes_in_app.dart';
import '../widget/sheared_appbar.dart';

class WithdrawRequestScreen extends StatelessWidget {
  const WithdrawRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShearedAppBar(title: 'Bank Withdraw', isBack: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Text(
                'Amount',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.bold,
                    color: Color(AppColor.gray)),
              ),
              const SizedBox(height: 10),
              const Text(
                '\$300.00',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.bold,
                    color: Color(AppColor.primaryTextColor)),
              ),
              const SizedBox(height: 18),
              InkWell(
                onTap: () {},
                child: const Text.rich(
                  TextSpan(
                    text: 'Available  ',
                    style: TextStyle(
                        fontSize: AppSizes.textDefaultSize,
                        color: Color(AppColor.gray)),
                    children: <InlineSpan>[
                      TextSpan(
                        text: '\$240.19',
                        style: TextStyle(
                          color: Color(AppColor.primaryButtonColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: MyButton(
            title: 'Continue', onPressed: () {}, textColorIsWhite: false),
      ),
    );
  }
}
