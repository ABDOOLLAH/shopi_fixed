import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/localization/changelocal.dart';
import 'package:shopi/view/screen/language/custombuttonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 20,),
            Custombuttonlang(textButton: "ar",onPressed: (){
              controller.changeLang("ar");
              Get.toNamed(AppRoutes.onBoarding);
              print("ضغطت AR");               // للتأكد من الاستدعاء

            },),
            Custombuttonlang(textButton: "en",onPressed: (){
              controller.changeLang("en");
              Get.toNamed(AppRoutes.onBoarding);
              print("ضغطت AR");               // للتأكد من الاستدعاء

            },),
          ],
        ),
      ),
    );
  }
}
