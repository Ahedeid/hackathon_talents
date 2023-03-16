import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon_talents/routes/app_router.dart';
import '../../utils/constant/colors_manger.dart';
import '../../utils/constant/images_constant.dart';
import '../../utils/constant/sizes_in_app.dart';

class SharedAppBar extends StatelessWidget with PreferredSizeWidget {
  SharedAppBar({
    Key? key,
    this.isImageTitle = false,
     this.title = '',
    this.isNotification = false,
    this.isBack = false ,
  }) : super(key: key);

  bool isImageTitle;
  String title;
  bool isNotification;
  bool isBack ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: AppSizes.hightAppBar,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: isBack == true?IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Color(AppColor.primaryTextColor),
        ),
        onPressed: () {
          AppRouter.mayBack();
        },
      ): Container(),
      title: isImageTitle == false
          ? Text(
              title,
              style: const TextStyle(
                fontFamily: "Segoe UI",
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.textLarge,
                color: Color(
                  AppColor.primaryTextColor,
                ),
              ),
            )
          : Image.asset(ImageConstant.logo,width:85 ,height: 25,),
      actions: [
        isNotification
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active,
                  color: Color(AppColor.primaryTextColor),
                ),
              )
            : Container(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.hightAppBar);
}
