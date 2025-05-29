import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/apptheme.dart';
import 'package:shopi/services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData apptheme = themeEnglish;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    apptheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      apptheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      apptheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    apptheme=themeEnglish;
    }
    super.onInit();
  }
}
