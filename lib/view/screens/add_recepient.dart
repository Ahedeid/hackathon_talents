import 'package:flutter/material.dart';
import 'package:hackathon_talents/view/widget/my_textFeild.dart';
import 'package:hackathon_talents/view/widget/sheared_appbar.dart';

import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/sizes_in_app.dart';
import '../widget/my_button.dart';

class AddRecepientScreen extends StatelessWidget {
  const AddRecepientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: SharedAppBar(
        title: "Add Recepient",
        isBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recipients Full Name (Arabic)',
                  style: TextStyle(
                      color: Color(
                        AppColor.textAboveFieldColor,
                      ),
                      fontSize: AppSizes.textMedium),
                ),
                MyTextField(
                  keyboardType: TextInputType.name,
                  isIcon: false,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Recipients Phone Number',
                  style: TextStyle(
                      color: Color(
                        AppColor.textAboveFieldColor,
                      ),
                      fontSize: AppSizes.textMedium),
                ),
                MyTextField(
                  keyboardType: TextInputType.phone,
                  isIcon: false,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Recipients ID Number',
                  style: TextStyle(
                      color: Color(
                        AppColor.textAboveFieldColor,
                      ),
                      fontSize: AppSizes.textMedium),
                ),
                MyTextField(
                  keyboardType: TextInputType.number,
                  isIcon: false,
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
            const Spacer(),
            MyButton(
              title: "Confirm",
              onPressed: () {},
              textColorIsWhite: false,
            )
          ],
        ),
      ),
    );
  }
}
