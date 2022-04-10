// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller
import '../controllers/home_controller.dart';

// Constant
import 'package:travelable_app/constant/color_constant.dart';

// Component
import 'components/bottom_naviation.dart';
import 'components/top_navigation.dart';

// Page
import 'pages/home_page.dart';
import 'pages/explore_page.dart';
import 'pages/bookmark_page.dart';
import 'pages/profile_page.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final List<Widget> _sectionPages = <Widget>[
    const HomePage(),
    const ExplorePage(),
    const BookmarkPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBaseColor,
      resizeToAvoidBottomInset: false,
      appBar: const TopNavigation(),
      body: Obx(() => IndexedStack(
            index: controller.selectedMenu.value,
            children: _sectionPages,
          )),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
