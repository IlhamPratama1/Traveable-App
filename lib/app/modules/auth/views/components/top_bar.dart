// Lib
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// Constant
import 'package:travelable_app/constant/color_constant.dart';
import 'package:travelable_app/constant/value_const.dart';

// Routes
import 'package:travelable_app/app/routes/app_pages.dart';

class TopBar extends GetView with PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: mBaseColor,
      title: IconButton(
        onPressed: () {
          Get.offAllNamed(Routes.introduction);
        },
        icon: SvgPicture.asset(
          'assets/icons/backButton.svg',
          width: normalSvgSize,
        ),
      ),
    );
  }
}
