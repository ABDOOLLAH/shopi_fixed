import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopi/binding.dart';

import 'package:shopi/core/constant/color.dart';
import 'package:shopi/services/services.dart';
import 'package:shopi/routes.dart';

import 'package:shopi/localization/translation.dart';
import 'package:shopi/localization/changelocal.dart'; // مصدر LocaleController
import 'package:shopi/localization/language.dart';
import 'package:shopi/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => MyServices().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: " chopi ",
      translations: MyTranslation(),
      locale: controller.language,
      theme: controller.apptheme,
      initialBinding: MyBinding(),
      getPages: routes,
    );
  }
}
