// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Constant
import 'package:travelable_app/constant/text_style_constant.dart';

// Model
import 'package:travelable_app/model/popular_destination_model.dart';

class PopularPlace extends GetView {
  const PopularPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Popular Flight', style: mainText),
        const SizedBox(height: 10),
        SizedBox(
          height: 110,
          child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 20);
              },
              itemCount: popularDestination.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage(popularDestination[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(popularDestination[index].place, style: categoriesText)
                  ],
                );
              }),
        )
      ],
    );
  }
}
