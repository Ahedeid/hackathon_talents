import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:provider/provider.dart';
import '../../logics/provider/banck_provider.dart';
import '../../utils/constant/colors_manger.dart';
import '../widget/my_button.dart';
import '../widget/sheared_appbar.dart';
import '../widget/text_above_field.dart';
import '../widget/text_and_empty_field.dart';

class AddBankAccount extends StatefulWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  TextEditingController? accountNumberController = TextEditingController();

  TextEditingController? nameController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    accountNumberController?.dispose();
    nameController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ShearedAppBar(title: 'Add Bank Account', isBack: true),
      body: Padding(
        padding: EdgeInsets.only(
            left: AppSizes.paddingHorizontal,
            right: AppSizes.paddingHorizontal,
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextAndField(title: 'Bank'),
              const SizedBox(height: 15),
              TextAndField(
                title: 'Account Owner Full Name',
                controller: nameController,
              ),
              const SizedBox(height: 15),
              TextAndEmptyField(
                title: 'Branch',
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
                      builder: (context) {
                        var midea = MediaQuery.of(context).size;
                        List branchs = <String>[
                          '0446 - Naser',
                          '0454 - Rimal',
                          '0448 - Nussairat',
                          '0451 - Main Branch',
                          '0452 - Khan Younis',
                          '0453 - Jabalia',
                          '0454 - Rafah',
                        ];
                        return ContentBottomBankAccount(
                          midea: midea,
                          list: branchs,
                          title: 'Branch',
                        );
                      });
                },
              ),
              const SizedBox(height: 15),
              TextAndField(
                title: 'Account Number',
                controller: accountNumberController,
              ),
              const SizedBox(height: 15),
              TextAndField(title: 'Currency'),
              const SizedBox(height: 15),
              TextAndEmptyField(
                title: 'Ledger',
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
                      builder: (context) {
                        var midea = MediaQuery.of(context).size;
                        List ledger = <String>[
                          '3000 - Current',
                          '3100 - Saving',
                          '3102 - Saving For Every Citizen',
                        ];
                        List subLedger = <String>[
                          'جاري',
                          'توفير',
                          'توفير لكل مواطن',
                        ];
                        return ContentBottomBankAccount2(
                          midea: midea,
                          list: ledger,
                          title: 'Ledger',
                          subLedger: subLedger,
                        );
                      });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                  title: 'Continue',
                  onPressed: () {
                     Provider.of<AddBankService>(context,listen: false).addNote(nameController!.text, accountNumberController!.text);
                    AppRouter.goTo(screenName: ScreenName.oTTPScreen);
                  },
                  textColorIsWhite: false),
              const SizedBox(height: 10),
              MyButton(
                  title: 'Back',
                  onPressed: () {
                    AppRouter.back();
                  },
                  textColor: AppColor.primaryTextColor),
            ],
          ),
        ),
      ),
    );
  }
}

class ContentBottomBankAccount extends StatelessWidget {
  ContentBottomBankAccount(
      {super.key,
      required this.midea,
      required this.list,
      required this.title});

  final Size midea;
  final List list;
  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: midea.height * 0.45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, color: Color(AppColor.primaryTextColor)),
                ),
                IconButton(
                    onPressed: () {
                      AppRouter.back();
                    },
                    icon: const Icon(Icons.close)),
              ],
            ),
            //const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    list[index],
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(AppColor.primaryTextColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentBottomBankAccount2 extends StatelessWidget {
  ContentBottomBankAccount2(
      {super.key,
      required this.midea,
      required this.list,
      required this.title,
      required this.subLedger});

  final Size midea;
  final List list;
  String title;

  final List subLedger;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: midea.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, color: Color(AppColor.primaryTextColor)),
                ),
                IconButton(
                    onPressed: () {
                      AppRouter.back();
                    },
                    icon: const Icon(Icons.close)),
              ],
            ),
            //const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        list[index],
                        style: const TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 18,
                          color: Color(AppColor.primaryTextColor),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Text(
                        subLedger[index],
                        style: const TextStyle(
                          fontFamily: 'Segoe UI',
                          color: Color(AppColor.gray),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
