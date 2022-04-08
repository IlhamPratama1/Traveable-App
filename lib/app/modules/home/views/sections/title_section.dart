// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Constant
import 'package:travelable_app/constant/text_style_constant.dart';

class TitleSection extends GetView {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
            text: TextSpan(
                text: 'Hello,',
                style: titleText1,
                children: <TextSpan>[
              TextSpan(text: ' Sophia', style: titleText2)
            ])),
        const SizedBox(height: 2),
        Text('Ready to create new journey today !', style: subtitleText)
      ],
    );
  }
}
