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
import 'package:provider/provider.dart';

import '../../logics/provider/banck_provider.dart';
import '../widget/sheared_appbar.dart';

class AddBankScreen extends StatelessWidget {
  const AddBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Bank Withdraw', isBack: true),
      body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.paddingHorizontal,
              vertical: AppSizes.paddingVertival),
          child: context.read<AddBankService>().getBank.isEmpty
              ? ListView(
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
                )
              : Consumer<AddBankService>(
                  builder: (context, bank, child) => ListView.builder(
                      itemCount: bank.getBank.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: const BorderSide(
                                  color: Color(AppColor.primaryButtonColor),
                                )),
                            minVerticalPadding: 20,
                            tileColor:
                                const Color(AppColor.whiteTextButtonColor),
                            //  onTap: () {
                            // //   AppRouter.goTo(screenName: ScreenName.addBankAccount);
                            //  },
                            leading: CircleAvatar(
                              radius: 40,
                              backgroundColor:
                                  const Color(AppColor.scaffoldBack),
                              child: SvgPicture.asset(
                                IconsConstant.bank,
                                height: 38,
                              ),
                            ),
                            title: Text(
                              bank.getBank[index].name,
                              style: const TextStyle(
                                fontSize: AppSizes.varyLarge,
                                //fontWeight: FontWeight.bold,
                                fontFamily: 'Segoe UI',
                                color: Color(
                                  AppColor.primaryTextColor,
                                ),
                              ),
                            ),
                            subtitle: Text(
                              bank.getBank[index].accountNumber,
                              style: const TextStyle(
                                fontSize: AppSizes.textDefaultSize,
                                fontFamily: 'Segoe UI',
                                color: Color(
                                  AppColor.primaryTextColor,
                                ),
                              ),
                            ),
                            trailing: InkWell(
                                onTap: () {
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
                                                  AppRouter.back();
                                                  UtilsConfig.showSnackBarMessage(
                                                      message:
                                                          'Bank account has been deleted.',
                                                      status: true);
                                                  bank.removeItem(index);
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
                                child: const Icon(Icons.close)),
                          ),
                        );
                      }),
                )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyButton(
                title: 'Continue',
                onPressed: () {
                  if (context.read<AddBankService>().getBank.isEmpty) {
                    UtilsConfig.showSnackBarMessage(
                        message: 'Please select a bank account.',
                        status: false);
                  }else{
                    AppRouter.goTo(screenName: ScreenName.withdrawalPreviewScreen);
                  }
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
