// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelable_app/app/modules/home/views/sections/popular_place.dart';

// Controller
import '../../controllers/home_controller.dart';

// Constant
import 'package:travelable_app/constant/value_const.dart';

// Section
import '../sections/title_section.dart';
import '../sections/search_section.dart';
import '../sections/place_section.dart';
import '../sections/all_categories.dart';
import '../sections/new_hotel.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: baseAllPadding,
        left: containerPadding,
        right: containerPadding,
      ),
      physics: const ClampingScrollPhysics(),
      children: <Widget>[
        const TitleSection(),
        const SizedBox(height: spaceBetweenSection),
        const SearchSection(),
        const SizedBox(height: spaceBetweenSection),
        PlaceSection(),
        const SizedBox(height: spaceBetweenSection),
        const AllCategories(),
        const SizedBox(height: spaceBetweenSection),
        const NewHotel(),
        const SizedBox(height: spaceBetweenSection),
        const PopularPlace(),
        const SizedBox(height: spaceBetweenSection),
      ],
    );
  }
}
