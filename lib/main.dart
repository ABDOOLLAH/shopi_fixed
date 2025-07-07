import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopi/binding.dart';
import 'package:shopi/services/services.dart';
import 'package:shopi/routes.dart';
import 'package:shopi/localization/translation.dart';
import 'package:shopi/localization/changelocal.dart'; // مصدر LocaleController

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

    return ScreenUtilInit(
      designSize: const Size(360, 690), // هذا مقاس التصميم الافتراضي
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "shopi",
          translations: MyTranslation(),
          locale: controller.language,
          theme: controller.apptheme,
          initialBinding: MyBinding(),
          getPages: routes,

          // Directionality + ScreenUtil integration
          builder: (context, child) {
            return Directionality(
              textDirection: controller.language?.languageCode == 'ar'
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              child: child!,
            );
          },
        );
      },
    );
  }
}
