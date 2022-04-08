// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller
import '../../controllers/home_controller.dart';

// Constant
import 'package:travelable_app/constant/value_const.dart';

// Section
import '../sections/title_section.dart';
import '../sections/search_section.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
          const EdgeInsets.only(top: containerPadding, left: containerPadding),
      physics: const ClampingScrollPhysics(),
      children: const <Widget>[
        TitleSection(),
        SizedBox(
          height: spaceBetweenSection,
        ),
        SearchSection(),
      ],
    );
  }
}
