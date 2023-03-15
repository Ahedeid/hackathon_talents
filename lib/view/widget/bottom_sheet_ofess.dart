import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import '../../logics/models/api_models/localy_models/offse_details.dart';
import '../../utils/constant/colors_manger.dart';

class ContentOfBottomSheetOffse extends StatefulWidget {
  const ContentOfBottomSheetOffse({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentOfBottomSheetOffse> createState() => _ContentOfBottomSheetOffseState();
}

class _ContentOfBottomSheetOffseState extends State<ContentOfBottomSheetOffse> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Offices',
                style: TextStyle(
                    fontSize: AppSizes.textSemiLarge,
                    color: Color(AppColor.primaryTextColor)),
              ),
              IconButton(
                onPressed: () {
                  AppRouter.back();
                },
                icon: const Icon(Icons.close),
              )
            ],
          ),
          const Divider(thickness: 1,height: 0.5,),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: OffseDetails.offesName.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'ساعات العمل: 9 صباحا -7مساءا',
                      style: TextStyle(
                        fontSize: AppSizes.textVeryTiny,
                        color: Color(AppColor.gray),
                      ),
                    ),
                    Text(
                      OffseDetails.offesFees[index],
                      style: const TextStyle(
                        fontSize: AppSizes.textVeryTiny,
                        color: Color(AppColor.gray),
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      OffseDetails.offesName[index],
                      style: const TextStyle(
                          fontSize: AppSizes.textDefaultSize,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe UI"),
                    ),
                    Text(
                      OffseDetails.offesLocation[index],
                      style: const TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: AppSizes.textVeryTiny,
                        color: Color(AppColor.gray),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

