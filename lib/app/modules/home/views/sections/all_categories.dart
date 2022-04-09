// Lib
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// Constant
import 'package:travelable_app/constant/text_style_constant.dart';
import 'package:travelable_app/constant/color_constant.dart';

class AllCategories extends GetView {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Categories', style: mainText),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/introduction');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(18),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: mBlueHardTransparentColor,
                    minimumSize: const Size(10, 10),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/plane.svg',
                    width: 32,
                  ),
                ),
                const SizedBox(height: 6),
                Text('Flight', style: categoriesText)
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(18),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: mBlueBoldTransparentColor,
                    minimumSize: const Size(10, 10),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/hotel.svg',
                    width: 32,
                  ),
                ),
                const SizedBox(height: 6),
                Text('Hotel', style: categoriesText)
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(18),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: mBLueMedTransparentColor,
                    minimumSize: const Size(10, 10),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/car.svg',
                    width: 32,
                  ),
                ),
                const SizedBox(height: 6),
                Text('Car', style: categoriesText)
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(18),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: mBlueSoftTransparentColor,
                    minimumSize: const Size(10, 10),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/flag.svg',
                    width: 32,
                  ),
                ),
                const SizedBox(height: 6),
                Text('Place', style: categoriesText)
              ],
            ),
          ],
        )
      ],
    );
  }
}
