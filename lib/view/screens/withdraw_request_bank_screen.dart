import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';
import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/sizes_in_app.dart';
import '../widget/sheared_appbar.dart';

class WithdrawRequestScreenBank extends StatelessWidget {
  const WithdrawRequestScreenBank({Key? key}) : super(key: key);

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
                  color: Color(AppColor.gray),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                showCursor: false,
                style: const TextStyle(
                    color: Color(AppColor.primaryTextColor),
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.totalAmountNo),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: '\$0.00',
                  errorStyle: TextStyle(fontSize: 12, height: 0.3),
               //   prefixText: '\$',
                  hintStyle: TextStyle(
                      color: Color(AppColor.gray),
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.totalAmountNo),
                  contentPadding: EdgeInsets.symmetric(),
                ),
                autofocus: true,
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
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: MyButton(
          title: 'Continue',
          onPressed: () {
            AppRouter.goTo(screenName: ScreenName.addBankScreen);
          },
          textColorIsWhite: false,
        ),
      ),
    );
  }
}
