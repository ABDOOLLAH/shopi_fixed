import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';
import 'package:shopi/services/services.dart';

class MyMiddlWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.setString("onboarding") == "1") {
      return const RouteSettings(name: AppRoutes.login);
    }
  }
}
