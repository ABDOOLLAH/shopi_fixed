import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class CheckemailController  extends GetxController{
  checkemail();
  goToSuccessSignUp();
}
class CheckemailControllerImp extends CheckemailController{
  late TextEditingController email;
  @override
  checkemail() {

  }
  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.verfiyCode);
  }
  @override
  void onInit() {
    email=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}