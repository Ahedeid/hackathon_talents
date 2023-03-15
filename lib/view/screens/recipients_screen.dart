import 'package:flutter/material.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';

import '../../routes/app_router.dart';
import '../../utils/constant/colors_manger.dart';
import '../../utils/helper.dart';
import '../widget/my_button.dart';
import '../widget/sheared_appbar.dart';

class RecipientsScreen extends StatelessWidget {
  const RecipientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShearedAppBar(title: 'Add Recipient', isBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Container(
                    width: double.infinity,
                    height: 85,
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    decoration: BoxDecoration(
                        color: const Color(AppColor.backGroundTextFieldColor),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: const Color(AppColor.primaryButtonColor),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
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
                                                  color: Color(AppColor
                                                      .primaryTextColor),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
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
                                                            BorderRadius
                                                                .circular(7),
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
                                                            'Are you sure you want to delete this recipient?',
                                                        status: true);
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      40),
                                                          backgroundColor:
                                                              const Color(AppColor
                                                                  .redDelete),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          )),
                                                  child: const Text('Delete'),
                                                ),
                                              ],
                                            ));
                                  },
                                  child: const Icon(Icons.delete_outline),
                                ),
                                const SizedBox(width: 15),
                                InkWell(
                                  onTap: () {
                                    AppRouter.back();
                                  },
                                  child: const Icon(Icons.edit_outlined),
                                ),
                              ],
                            ),
                            const Text(
                              'ID: 488345512',
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
                              'محمد خلف',
                              style: TextStyle(
                                fontSize: AppSizes.textSemiLarge,
                                color: Color(AppColor.primaryTextColor),
                              ),
                            ),
                            Text(
                              'Phone: 0599823345',
                              style: TextStyle(
                                fontSize: AppSizes.textTiny,
                                color: Color(AppColor.gray),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
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
              title: 'Select',
              onPressed: () {},
              textColorIsWhite: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              isBorder: true,
              title: 'Add',
              onPressed: () {
                AppRouter.back();
              },
              textColor: AppColor.primaryButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
