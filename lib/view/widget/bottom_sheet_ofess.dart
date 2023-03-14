import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import '../../logics/models/offse_details.dart';
import '../../utils/constant/colors_manger.dart';

class ContentOfBottomSheet extends StatefulWidget {
  const ContentOfBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentOfBottomSheet> createState() => _ContentOfBottomSheetState();
}

class _ContentOfBottomSheetState extends State<ContentOfBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var midea = MediaQuery.of(context).size;
    return SizedBox(
      height: midea.height * 0.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Column(
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
            const SizedBox(
              height: 10,
            ),
            const Divider(),
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
      ),
    );
  }
}

/*
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
            builder: (context) => SizedBox(
              child: ContentOfBottomSheet(
                midea: MediaQuery.of(context).size,
              ),
            ),
          );
 */
