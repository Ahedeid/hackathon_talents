import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/routes/screen_name.dart';
import 'package:hackathon_talents/view/widget/my_button.dart';

import '../widget/sheared_appbar.dart';
import '../widget/text_above_field.dart';

class AddRecipentsScreen extends StatelessWidget {
  const AddRecipentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShearedAppBar(title: 'Add Recipient', isBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextAndField(
                title: 'Recipients Full Name (Arabic)',
              ),
              const SizedBox(height: 15),
              TextAndField(
                title: 'Recipients Phone Number',
              ),
              const SizedBox(height: 15),
              TextAndField(
                title: 'Recipients ID Number',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              MyButton(
                title: 'Confirm',
                textColorIsWhite: false,
                onPressed: () {
                  AppRouter.goTo(screenName: ScreenName.recipentsScreen);
                },
                isBorder: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
