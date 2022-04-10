// Lib
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:travelable_app/app/routes/app_pages.dart';

// Constant
import 'package:travelable_app/constant/color_constant.dart';
import 'package:travelable_app/constant/text_style_constant.dart';

class LoginForm extends GetView {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 16),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: valueInputText,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              filled: true,
              fillColor: mBlueTransparentColor,
              hintText: 'Username',
              hintStyle: placeholderText,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            keyboardType: TextInputType.name,
            style: valueInputText,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              filled: true,
              fillColor: mBlueTransparentColor,
              hintText: 'Email',
              hintStyle: placeholderText,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            style: valueInputText,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              filled: true,
              fillColor: mBlueTransparentColor,
              hintText: 'Password',
              hintStyle: placeholderText,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: mBlueHardColor,
              ),
              onPressed: () {
                Get.offAllNamed(Routes.home);
              },
              child: Text('Register', style: placeCardText),
            ),
          )
        ],
      ),
    );
  }
}
