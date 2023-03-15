import 'package:flutter/material.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import 'package:hackathon_talents/utils/constant/sizes_in_app.dart';
import '../../logics/models/offse_details.dart';
import '../../logics/models/recipients_model.dart';
import '../../utils/constant/colors_manger.dart';

class ContentSheetRecipients extends StatefulWidget {
  const ContentSheetRecipients({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentSheetRecipients> createState() => _ContentSheetRecipientsState();
}

class _ContentSheetRecipientsState extends State<ContentSheetRecipients> {
  @override
  Widget build(BuildContext context) {
    var midea = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recipients',
                style: TextStyle(
                  fontSize: AppSizes.textLarge,
                  color: Color(AppColor.primaryTextColor),
                ),
              ),
              IconButton(
                onPressed: () {
                  AppRouter.back();
                },
                icon: const Icon(Icons.close),
              )
            ],
          ),
          const Divider(),
          const SizedBox(height: 10),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: RecipientsDetails.clintName.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(''),
                    Text(
                      RecipientsDetails.idClint[index],
                      style: const TextStyle(
                        fontSize: AppSizes.textTiny,
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
                      RecipientsDetails.clintName[index],
                      style: const TextStyle(
                          fontSize: AppSizes.textSemiLarge,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe UI"),
                    ),
                    Text(
                      RecipientsDetails.phoneNumber[index],
                      style: const TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: AppSizes.textTiny,
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
