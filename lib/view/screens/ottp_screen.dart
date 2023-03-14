import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_talents/utils/constant/icons_constant.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';

import '../../routes/app_router.dart';
import '../../routes/screen_name.dart';
import '../../utils/constant/colors_manger.dart';
import '../widget/ottp_field.dart';
import '../widget/sheared_appbar.dart';

class OTTPScreen extends StatelessWidget {
  const OTTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShearedAppBar(
        isBack: true,
        isImageTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppSizes.paddingVertival,
            horizontal: AppSizes.paddingHorizontal),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(IconsConstant.smartPhone),
                const SizedBox(height: 25),
                const Text(
                  'We have sent you a verification code\n to your mobile number ……….098',
                  style: TextStyle(
                    fontSize: AppSizes.textDefaultSize,
                    color: Color(AppColor.gray),
                    fontFamily: 'Segoe UI',
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    OTTPFeild(),
                    OTTPFeild(),
                    OTTPFeild(),
                    Text('-'),
                    OTTPFeild(),
                    OTTPFeild(),
                    OTTPFeild(),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  '02:00',
                  style: TextStyle(
                    color: Color(AppColor.gray),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {},
                  child: const Text.rich(
                    TextSpan(
                      text: 'Didn\'t get the code?  ',
                      style: TextStyle(
                          fontSize: AppSizes.textDefaultSize,
                          color: Color(AppColor.gray)),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Resend',
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
                MyButton(
                  title: 'Verify',
                  onPressed: () {
                    AppRouter.goToAndRemove(screenName: ScreenName.addBankScreen);
                  },
                  textColorIsWhite: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
