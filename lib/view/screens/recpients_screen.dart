import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/helper.dart';
import 'package:hackathon_talents/view/widget/sheared_appbar.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/sizes_in_app.dart';
import '../widget/my_button.dart';

class RecipientsScreen extends StatelessWidget {
  const RecipientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: "Recepients",
        isBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            const RecepientListItem(),
            const SizedBox(
              height: 12,
            ),
            const RecepientListItem(),
            const SizedBox(
              height: 12,
            ),
            const RecepientListItem(),
            const SizedBox(
              height: 12,
            ),
            const RecepientListItem(),
            const SizedBox(
              height: 12,
            ),
            const Spacer(),
            Row(
              children: [
                MyButton(
                  height: 45,
                  width: 130,
                  title: "Add",
                  onPressed: () {},
                  textColorIsWhite: true,
                  textColor: AppColor.primaryButtonColor,
                ),
                const Spacer(),
                MyButton(
                  height: 45,
                  width: 130,
                  title: "Select",
                  onPressed: () {},
                  textColorIsWhite: false,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecepientListItem extends StatelessWidget {
  const RecepientListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          color: const Color(AppColor.backGroundTextFieldColor),
          border: Border.all(
              width: .5, color: const Color(AppColor.borderColorUnSelected)),
          borderRadius: BorderRadius.circular(7)),
      height: 80,
      width: 340,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  //  UtilsConfig.showAlertDialog();
                },
                child: SvgPicture.asset(
                  IconsConstant.delete,
                  height: 15,
                  width: 15,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.edit_outlined,
                  size: 20,
                ),
              ),
              const Spacer(),
              const Text("محمد خلف",
                  style: TextStyle(
                      fontSize: 16, color: Color(AppColor.primaryTextColor))),
            ],
          ),
          Row(
            children: const [
              Text("ID: 488345512",
                  style: TextStyle(fontSize: 13, color: Color(AppColor.grey))),
              Spacer(),
              Text("Phone: 0599823345",
                  style: TextStyle(fontSize: 13, color: Color(AppColor.grey))),
            ],
          ),
        ],
      ),
    );
  }
}
