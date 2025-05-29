import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class VerifycodeController  extends GetxController{
  late String verifycode;
  checCode();
  goTosuccessSignUp();
}
class VerifycodeControllerImp extends VerifycodeController{
   @override
  checCode() {

  }
  @override
  goTosuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }
  @override
  void onInit() {
     super.onInit();
  }

}