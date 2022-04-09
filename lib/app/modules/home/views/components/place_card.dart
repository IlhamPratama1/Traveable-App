// lib
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// Constant
import 'package:travelable_app/constant/text_style_constant.dart';

class PlaceCard extends GetView {
  const PlaceCard(
      {Key? key,
      required this.imageUrl,
      required this.country,
      required this.place,
      required this.rating})
      : super(key: key);

  final String imageUrl;
  final String country;
  final String place;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0.7, 1],
                colors: [
                  Color.fromRGBO(0, 0, 0, 0),
                  Color.fromRGBO(49, 49, 49, 0),
                  Color.fromRGBO(0, 0, 0, 1),
                ],
              ),
            ),
          ),
          Positioned(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size(10, 10)),
              child: SvgPicture.asset(
                'assets/icons/heart.svg',
                width: 16,
              ),
            ),
            top: 2,
            right: 2,
          ),
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  place,
                  style: placeCardText,
                ),
                const SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/location_white.svg',
                      width: 10,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      country,
                      style: countryCardText,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 18,
                      width: 64,
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 2);
                        },
                        itemCount: rating.toInt(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SvgPicture.asset(
                            'assets/icons/star.svg',
                            width: 10,
                          );
                        },
                      ),
                    ),
                    Text(
                      '$rating',
                      style: ratingCardText,
                    ),
                  ],
                ),
              ],
            ),
            bottom: 18,
            left: 16,
          )
        ],
      ),
    );
  }
}
