import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datesource/static/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) => controller.OnPageChanged(val),
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) {
        final page = onBoardingList[i];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              page.title!,
              style: const TextStyle(
                height: 2,
                color: AppColorApp.grey,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 60),
            Image.asset(page.image!, height: Get.width / 1.3, fit: BoxFit.fill),

            Container(
              width: double.infinity,
              child: Text(
                page.body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColorApp.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
