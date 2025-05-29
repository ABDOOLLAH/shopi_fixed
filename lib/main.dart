import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shopi/core/constant/color.dart';
import 'package:shopi/services/services.dart';
import 'package:shopi/routes.dart';

import 'package:shopi/localization/translation.dart';
import 'package:shopi/localization/changelocal.dart';  // مصدر LocaleController
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
      title:" chopi ",
      translations: MyTranslation(),    // ملفات الترجمة
      locale: controller.language,      // اللغة المختارة
      theme: ThemeData(
        fontFamily: 'Cairo',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: AppColorApp.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          bodyLarge: TextStyle(
            height: 2,
            color: AppColorApp.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Language(),
      //const Language(),  // يفترض أن تعرّف هذه الكلاس في language.dart
      routes: routes,
    );
  }
}
