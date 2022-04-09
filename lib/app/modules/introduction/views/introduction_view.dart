import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntroductionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${controller.count}',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () => {Get.toNamed('/home')},
                child: const Text('Move'))
          ],
        ),
      ),
    );
  }
}
