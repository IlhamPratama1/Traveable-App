// Lib
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// Component
import 'package:travelable_app/app/modules/auth/views/components/login_form.dart';
import 'components/top_bar.dart';

// Constant
import 'package:travelable_app/constant/color_constant.dart';
import 'package:travelable_app/constant/text_style_constant.dart';
import 'package:travelable_app/constant/value_const.dart';

// Routes
import 'package:travelable_app/app/routes/app_pages.dart';

class LoginView extends GetView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const TopBar(),
      backgroundColor: mBaseColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: containerPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Login Account',
                  style: titleText2,
                ),
                Text(
                  'Ready to create new journey today',
                  style: subtitleText,
                )
              ],
            ),
            const SizedBox(height: spaceBetweenSection),
            Text('User Information', style: hotelCardText),
            const LoginForm(),
            const SizedBox(height: spaceBetweenSection),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                ),
                const SizedBox(width: 6),
                Text('Sign in with Google or Facebook',
                    style: subtitleInfoText),
                const SizedBox(width: 6),
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                ),
              ],
            ),
            const SizedBox(height: spaceBetweenSection),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.2))),
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/google.svg', width: 20),
                    const SizedBox(width: 8),
                    Text('google', style: hotelCardText),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0.2))),
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/facebook.svg', width: 24),
                    const SizedBox(width: 8),
                    Text('Facebook', style: hotelCardText),
                  ],
                ),
              ),
            ),
            const SizedBox(height: spaceBetweenSection),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have account ?',
                    style: subtitleInfoText,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed(Routes.register);
                    },
                    child: Text(
                      'Sign Up',
                      style: highlightTextButton,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
