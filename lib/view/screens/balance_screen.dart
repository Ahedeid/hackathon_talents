import 'package:flutter/material.dart';
import 'package:hackathon_talents/logics/provider/withdeawProvider.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';
import 'package:hackathon_talents/view/widget/sheared_appbar.dart';
import 'package:provider/provider.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/constant_text_styles.dart';
import '../widget/BottomSheet.dart';

class BalanceScreen extends StatefulWidget {
   BalanceScreen({Key? key}) : super(key: key);

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}


class _BalanceScreenState extends State<BalanceScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WithdrawProvider>().getAllWithdraw();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Balance'),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppSizes.paddingHorizontal),
        child: ListView(
          children: [
            Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(7),
              child: Container(
                width: double.infinity,
                height: 85,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 0.5,
                      color: const Color(AppColor.borderColor),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Current Balance',
                          style: TextStyle(
                              fontSize: AppSizes.textDefaultSize,
                              fontFamily: 'Segoe UI',
                              fontWeight: FontWeight.normal,
                              color: Color(AppColor.currentBalance)),
                        ),
                        Text(
                          '\$250.00',
                          style: TextStyle(
                            fontSize: AppSizes.textLarge,
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.bold,
                            color: Color(AppColor.primaryTextColor),
                          ),
                        ),
                      ],
                    ),
                    MyButton(
                      title: 'Withdraw',
                      width: 140,
                      isBorder: true,
                      textColorIsWhite: true,
                      textColor: AppColor.primaryButtonColor,
                      onPressed: () {
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
                          builder: (context) => const SizedBox(
                            child: ContentOfBottomSheet(),
                            // ContentOfBottomSheet(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Withdrawals',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Segoe UI"),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  width: 0.5,
                  color: const Color(AppColor.borderColor),
                ),
              ),
              child: Consumer<WithdrawProvider>(
                builder: (context, withdraw, child)=> ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:  5,
                  //withdraw.withdrawList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'asdasdas',
                          //  withdraw.withdrawList[index].office[index],
                            style: AppTextStyles.deafultText,
                          ),
                          Text(
                            '12:30 AM, 21 Aug',
                            style: AppTextStyles.bodyText1,
                          ),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '\$567',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Segoe UI"),
                          ),
                          Text(
                            'Pending',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Segoe UI",
                                color: Color(0xFFDAA545)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
