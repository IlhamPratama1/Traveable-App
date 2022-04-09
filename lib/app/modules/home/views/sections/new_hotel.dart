// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Const
import 'package:travelable_app/constant/text_style_constant.dart';

// Model
import 'package:travelable_app/model/new_hotel_model.dart';

// Component
import '../components/new_hotel_card.dart';

class NewHotel extends GetView {
  const NewHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('New Experiences', style: mainText),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 20);
            },
            scrollDirection: Axis.horizontal,
            itemCount: newHotels.length,
            itemBuilder: (context, index) {
              return NewHotelCard(
                imageUrl: newHotels[index].imageUrl,
                name: newHotels[index].name,
                country: newHotels[index].country,
                rating: newHotels[index].rating,
              );
            },
          ),
        ),
      ],
    );
  }
}
