import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class VerifycodeController  extends GetxController{
  late String verifycode;
  checCode();
  goToResetPassword();
}
class VerifycodeControllerImp extends VerifycodeController{
   @override
  checCode() {

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