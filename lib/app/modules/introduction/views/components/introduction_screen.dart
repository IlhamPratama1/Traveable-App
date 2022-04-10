// Lib
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Constant
import 'package:travelable_app/constant/text_style_constant.dart';

// Model
import 'package:travelable_app/model/introduction_model.dart';

// Routes
import 'package:travelable_app/app/routes/app_pages.dart';

class IntroductionScreen extends GetView {
  const IntroductionScreen({Key? key, required this.model}) : super(key: key);

  final IntroductionModel model;

  @override
  Widget build(BuildContext context) {
    model.imageUrl;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 52),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(model.imageUrl), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: model.medTitle,
              style: introTitleNText,
              children: <TextSpan>[
                TextSpan(text: model.boldTitle, style: introTitleBText)
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(model.subtitle, style: introSubtitleText),
          const SizedBox(height: 18),
          InkWell(
            onTap: () {
              Get.offAllNamed(Routes.home);
            },
            child: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 255, 255, 0.3)),
              child: SvgPicture.asset('assets/icons/arrow.svg'),
            ),
          )
        ],
      ),
    );
  }
}
