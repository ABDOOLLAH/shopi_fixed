import 'package:get/get.dart';
import 'package:shopi/controller/onboarding_controller.dart';
import 'package:shopi/core/constant/color.dart';
import 'package:flutter/material.dart';

class Custombuttononboarding extends GetView<OnBoardingControllerImp> {
  const Custombuttononboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        color: AppColorApp.primaryColor,
        textColor: Colors.white,
        onPressed: () {
          controller.next();
         },
        child: const Text("Continue"),
      ),
    );
  }
}
