// Lib
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:get/get.dart';

// Controller
import '../controllers/introduction_controller.dart';

// Model
import 'package:travelable_app/model/introduction_model.dart';

// Component
import 'components/Introduction_Screen.dart';

class IntroductionView extends GetView {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false, body: SlideView());
  }
}

class SlideView extends GetView<IntroductionController> {
  SlideView({Key? key}) : super(key: key);

  final List<Widget> introductionScreens = introductionData
      .map((model) => IntroductionScreen(model: model))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          physics: const CustomPageViewScrollPhysics(),
          onPageChanged: controller.setSlide,
          children: introductionScreens,
        ),
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 6,
                width: 48,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 3);
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Obx(
                      () => Container(
                        width: controller.slide.value == index ? 18 : 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: controller.slide.value == index
                              ? Colors.white
                              : const Color.fromRGBO(255, 255, 255, 0.6),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          top: 48,
          left: 56,
        ),
      ],
    );
  }
}

class CustomPageViewScrollPhysics extends ScrollPhysics {
  const CustomPageViewScrollPhysics({ScrollPhysics? parent})
      : super(parent: parent);

  @override
  CustomPageViewScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomPageViewScrollPhysics(parent: buildParent(ancestor)!);
  }

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 50,
        stiffness: 100,
        damping: 0.8,
      );
}
