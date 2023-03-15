import 'package:flutter/material.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';

import '../../utils/constant/colors_manger.dart';
import '../widget/sheared_appbar.dart';



class RecipientsScreen extends StatelessWidget {
  const RecipientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShearedAppBar(title: 'Add Recipient', isBack: true),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(onTap: () {}, child: const Icon(Icons.delete),),
                          const SizedBox(width: 10),
                          InkWell(onTap: () {}, child: const Icon(Icons.edit),),
                        ],
                      ),
                      const Text(
                        'ID: 488345512',
                        style: TextStyle(
                            fontSize: AppSizes.textTiny,
                            color: Color(AppColor.gray)),
                      )
                    ],
                  ),
                ),
                trailing: Column(
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
              );
            },
          )
        ],
      ),
    );
  }
}
