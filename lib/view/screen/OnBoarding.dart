import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/onboarding_controller.dart';
import 'package:shopi/view/widget/onboarding/customslider.dart';
import 'package:shopi/view/widget/onboarding/dotcontroller.dart';
import 'package:shopi/view/widget/onboarding/Custombuttononboarding.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // تسجيل الكنترولر
    Get.put(OnBoardingControllerImp());

    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // شريط الشرائح
            const Expanded(flex: 2, child: CustomSlider()),

            // الدوائر والزر
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotController(),
                  Spacer(flex: 2),

                  // هنا تأكد أن الكلاس مسمى CustomButtonOnboarding
                  Custombuttononboarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
