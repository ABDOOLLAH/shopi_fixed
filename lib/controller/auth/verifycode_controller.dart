import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class VerifycodeController extends GetxController {
  late String verifycode;


  checkCode();

  goToResetPassword();
}

class VerifycodeControllerImp extends VerifycodeController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  checkCode() {
    var formdate = formstate.currentState;
    if (formdate!.validate()) {
    } else {}
  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
