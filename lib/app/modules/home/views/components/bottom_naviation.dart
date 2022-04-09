// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Constant
import 'package:travelable_app/constant/color_constant.dart';
import 'package:travelable_app/constant/value_const.dart';

// Controller
import '../../controllers/home_controller.dart';

class BottomNavigation extends GetView<HomeController> {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
          color: mBaseColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          boxShadow: [
            BoxShadow(
              color: mNavShadowColor,
              spreadRadius: 0,
              blurRadius: 44,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ]),
      child: Obx(
        () => BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: controller.selectedMenu.value == 0
                    ? SvgPicture.asset('assets/icons/home_fill.svg',
                        width: normalSvgSize)
                    : SvgPicture.asset('assets/icons/home.svg',
                        width: normalSvgSize),
                label: ''),
            BottomNavigationBarItem(
                icon: controller.selectedMenu.value == 1
                    ? SvgPicture.asset('assets/icons/location_fill.svg',
                        width: normalSvgSize)
                    : SvgPicture.asset('assets/icons/location.svg',
                        width: normalSvgSize),
                label: ''),
            BottomNavigationBarItem(
                icon: controller.selectedMenu.value == 2
                    ? SvgPicture.asset('assets/icons/bookmark_fill.svg',
                        width: normalSvgSize)
                    : SvgPicture.asset('assets/icons/bookmark.svg',
                        width: normalSvgSize),
                label: ''),
            BottomNavigationBarItem(
                icon: controller.selectedMenu.value == 3
                    ? SvgPicture.asset('assets/icons/profile_fill.svg',
                        width: mediumSvgSize + 2)
                    : SvgPicture.asset('assets/icons/profile.svg',
                        width: mediumSvgSize + 4),
                label: ''),
          ],
          currentIndex: controller.selectedMenu.value,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          onTap: controller.setSelectedMenu,
        ),
      ),
    );
  }
}
