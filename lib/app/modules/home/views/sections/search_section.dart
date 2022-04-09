// Lib
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Constant
import 'package:travelable_app/constant/value_const.dart';
import 'package:travelable_app/constant/text_style_constant.dart';
import 'package:travelable_app/constant/color_constant.dart';

class SearchSection extends GetView {
  const SearchSection({Key? key, this.barWidth = 10}) : super(key: key);

  final int barWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 2),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/filter.svg',
                width: normalSvgSize)),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 54,
            decoration: BoxDecoration(
                color: mBlueTransparentColor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Search your trip', style: placeholderText),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/search.svg',
                          width: normalSvgSize + 6))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
