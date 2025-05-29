import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/controller/onboarding_controller.dart';
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
              style:
                  Theme.of(
                    context,
                  ).textTheme.titleLarge, // ← فاصلة بدل الفاصلة المنقوطة
            ),
            const SizedBox(height: 80),
            Image.asset(page.image!, width: 200, height: 230, fit: BoxFit.fill),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                page.body!,
                textAlign: TextAlign.center,
                style:
                    Theme.of(context).textTheme.bodyLarge, // ← فاصلة هنا أيضاً
              ),
            ),
          ],
        );
      },
    );
  }
}
