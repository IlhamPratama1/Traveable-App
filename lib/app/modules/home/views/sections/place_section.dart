// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Constant
import 'package:travelable_app/constant/text_style_constant.dart';

// Controller
import '../../controllers/home_controller.dart';

// Model
import 'package:travelable_app/model/place_category_model.dart';
import 'package:travelable_app/model/explore_place_model.dart';

// Component
import '../components/place_card.dart';

class PlaceSection extends GetView<HomeController> {
  const PlaceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Explore Place', style: mainText),
        SizedBox(
          height: 40,
          child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 7);
              },
              scrollDirection: Axis.horizontal,
              itemCount: placeCategories.length,
              itemBuilder: (context, index) {
                return TextButton(
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    minimumSize: const Size(0, 12),
                  ),
                  onPressed: () {
                    controller.setSelectedPlaceCategory(index);
                  },
                  child: Obx(
                    () => Text(
                      placeCategories[index].category,
                      style: controller.placeCategory.value == index
                          ? placeFilterText
                          : placeholderText,
                      textAlign: TextAlign.left,
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(height: 6),
        SizedBox(
          height: 240,
          child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 20);
              },
              scrollDirection: Axis.horizontal,
              itemCount: explorePlace.length,
              itemBuilder: ((context, index) {
                return PlaceCard(
                  imageUrl: explorePlace[index].imageUrl,
                  place: explorePlace[index].place,
                  country: explorePlace[index].country,
                  rating: explorePlace[index].rating,
                );
              })),
        ),
      ],
    );
  }
}
