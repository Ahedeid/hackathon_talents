import 'package:flutter/material.dart';

import '../../routes/app_router.dart';
import '../../routes/screen_name.dart';
import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/images_constant.dart';
import '../../utils/constant/sizes_in_app.dart';

class ShearedAppBar extends StatelessWidget with PreferredSizeWidget {
  const ShearedAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Notes',
        style: TextStyle(
            color: Color(AppColor.primaryTextColor)),
      ),
      actions: [
        CircleAvatar(
          radius: 25,
          //  backgroundColor: const Color(AppColor.backGroundSearchIconColor),
          child: IconButton(
            icon: const Icon(
              Icons.search,
              //     color: Color(AppColor.tealColor),
            ),
            onPressed: () =>
                AppRouter.goTo(screenName: ScreenName.searchScreen),
          ),
        ),
        const SizedBox(width: 10),
        CircleAvatar(
          radius: 25,
          //   backgroundColor: const Color(AppColor.backGroundSearchIconColor),
          child: IconButton(
            icon: const Icon(
              Icons.favorite,
              // color: Color(AppColor.tealColor),
            ),
            onPressed: () =>
                AppRouter.goTo(screenName: ScreenName.favoriteScreen),
          ),
        ),
        const SizedBox(width: 10),
     
        const SizedBox(width: 10),
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

  
 
}
