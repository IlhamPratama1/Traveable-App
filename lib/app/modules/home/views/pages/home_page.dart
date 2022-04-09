// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelable_app/app/modules/home/views/sections/popular_place.dart';

// Constant
import 'package:travelable_app/constant/value_const.dart';

// Section
import '../sections/title_section.dart';
import '../sections/search_section.dart';
import '../sections/place_section.dart';
import '../sections/all_categories.dart';
import '../sections/new_hotel.dart';

class HomePage extends GetView {
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
      children: const <Widget>[
        TitleSection(),
        SizedBox(height: spaceBetweenSection),
        SearchSection(),
        SizedBox(height: spaceBetweenSection),
        PlaceSection(),
        SizedBox(height: spaceBetweenSection),
        AllCategories(),
        SizedBox(height: spaceBetweenSection),
        NewHotel(),
        SizedBox(height: spaceBetweenSection),
        PopularPlace(),
        SizedBox(height: spaceBetweenSection),
      ],
    );
  }
}
