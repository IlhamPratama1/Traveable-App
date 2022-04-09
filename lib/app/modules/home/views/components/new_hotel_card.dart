// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Const
import 'package:travelable_app/constant/text_style_constant.dart';

class NewHotelCard extends GetView {
  const NewHotelCard(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.country,
      required this.rating})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String country;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
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
                top: 0,
                right: 0,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: hotelCardText),
                const SizedBox(height: 3),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(country, style: hotelCountryCard),
                    const SizedBox(width: 4),
                    SvgPicture.asset('assets/icons/star.svg', width: 10),
                    const SizedBox(width: 2),
                    Text('$rating', style: ratingHotelCard),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
