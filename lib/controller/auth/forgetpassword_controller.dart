import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopi/core/constant/routes.dart';

abstract class ForgetpasswordController  extends GetxController{
  checkemail();
  goToVerfiycode();
}
class ForgetpasswordControllerImp extends ForgetpasswordController{
  late TextEditingController email;
  @override
  checkemail() {

  }
  @override
  goToVerfiycode() {
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